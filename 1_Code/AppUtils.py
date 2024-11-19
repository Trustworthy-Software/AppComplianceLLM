from   dotenv                import load_dotenv
import xml.etree.ElementTree as ET
import pandas                as pd
import subprocess
import requests
import shutil
import json
import time
import os
import re

LIBRARIES_PATH = "../Libraries/AndroidLibraries.txt"
SYSTEMS_PATH   = "../Libraries/SystemLibraries.txt"

# Class representing an Android App
class App:

    # Fields
    apkPath           = None

    # To store the code
    smaliCode        = None
    smaliCodeClasses = None
    smaliCodeMethods = None

    # To keep track of the number of classes and methods
    numClasses = -1
    numMethods = -1

    # Initialize the App object.
    def __init__(self, apkPath = None):
        self.apkPath = apkPath

    # Print to a string
    def __str__(self):
        avgNumMethodsPerClass = self.numMethods / self.numClasses if self.numClasses > 0 else 0
        return (
            "\n⭐ --- App Summary --- ⭐\n"
            f"--- 🔢 N. Classes               : {self.numClasses}\n"
            f"--- 🔢 N. Methods               : {self.numMethods}\n"
            f"--- 🔢 Avg N. methods per class : {int(avgNumMethodsPerClass)}\n"
        )
    
    # Delete the APK file.
    def deleteAPK(self):
        try:
            print("\n--- 🗑️ Deleting APK File.")
            os.remove(self.apkPath)
            print("--- ✅ Success.")
        except OSError as e:
            print("--- ⚠️ Error : {}\n".format(e))

    # Delete everything related to the analyzed app.
    def deleteAll(self):
        try:
            shutil.rmtree(self.apkPath[:-4])
        except OSError as e:
            print("⚠️ Error: {}".format(e))

    ### Smali Extraction ###
    # Extracts Smali code from the APK.
    # This method initiates the extraction process, which involves the following steps:
    # 1. Decompile the APK file using Apktool.
    # 2. Retrieve the Smali code from the decompiled files.
    # 3. Extract classes and methods from the Smali code.
    # 4. Clean up temporary files.
    def extract(self):
        print("\n⛏️ --- Extracting Smali Code --- ⛏️")
        # Decompile and delete APK
        self.decompileWithApktool()
        # self.deleteAPK()
        # Process the Smali Files and create Smali Methods
        self.getSmaliCode()
        self.getSmaliClasses()
        self.getSmaliMethods()
        # Delete all
        # self.deleteAll()

    # Decompile the APK File using ApkTool.
    def decompileWithApktool(self):
        try:
            # Command to decompile APK using Apktool
            print("\n--- ⭕ Decompiling with ApkTool.")

            command = ["apktool", "d", "-f", '-o', self.apkPath[:-4], "-q", self.apkPath]

            subprocess.run(command, check=True)
            print("--- ✅ Success.")

        except subprocess.CalledProcessError as e:
            print("⚠️ --- Error : {}".format(e))

        # Parse Manifest File
    
    # Get Smali Code from  the output of ApkTool.
    def getSmaliCode(self):
        print("\n--- ⭕ Smali Code Extraction")

        # Output Folder of ApkTool
        dataPath = self.apkPath[:-4]
        # Result
        smaliCode = []

        for root, dirs, files in os.walk(dataPath):
            # Check for smali directories
            for directory in dirs:
                if directory.startswith("smali"):
                    # Retrieve content of smali files and store them
                    path = os.path.join(root, directory)
                    for dirPath, _, fileList in os.walk(path):
                        for fileName in fileList:
                            filePath = os.path.join(dirPath, fileName)
                            with open(filePath, 'r', encoding='utf-8') as file:
                                content = file.read()
                                smaliCode.append({'fileName': fileName, 'content': content})

        # Number of Files
        print("--- #️⃣ Files  : {}".format(len(smaliCode)))

        # Store the results
        self.smaliCode = smaliCode

    # Extract Class Name
    def extractClassName(self, text):
        # Use regex to match and capture the class name
        regex = r'\.class(?:\s+[\w\s]+)*\s+L([^;]+)'
        match = re.search(regex, text)
        if match:
            return match.group(1)
        else:
            return None

        # if match:
        #     className = match.group(1).replace('/', '.').split()[-1].split("$")[0]
        #     return className[1:]
        # else:
        #     return None

    # Reorganize Code into Classes
    def getSmaliClasses(self):
        # Result
        smaliClassesList = []

        # Sorting the JSON list by 'fileName'
        self.smaliCode.sort(key=lambda x: x['fileName'])

        # Grouping the JSON list by class name and aggregating content
        classContentDict = {}
        for item in self.smaliCode:
            className = self.extractClassName(item['content'])
            if className:
                if className not in classContentDict:
                    classContentDict[className] = []
                classContentDict[className].append(item['content'])

        # Creating the result list of JSON objects with 'class' and 'content' fields
        for className, contentList in classContentDict.items():
            smaliClassesList.append({'className': className.replace('/', '.'), 'content': '\n'.join(contentList)})

        # Sorting the list by class name
        smaliClassesList.sort(key=lambda x: x['className'])

        # Store and print Number of Classes
        self.numClasses = len(smaliClassesList)
        print("--- #️⃣ Classes: {}".format(self.numClasses))
        
        # Store the results
        self.smaliCodeClasses = smaliClassesList

        # Check if numClasses is zero and handle accordingly
        if self.numClasses == 0:
            print("--- ⚠️ Warning: No classes found. ")
            self.numMethods = 0

    # Reogranize Code into Methods
    def getSmaliMethods(self):
        # Result
        smaliMethodsList = []

        # Iterate through each class
        for classObj in self.smaliCodeClasses:
            className    = classObj['className']
            classContent = classObj['content']

            # Extract methods from class content
            # Define a regular expression pattern to match method blocks
            methodPattern = re.compile(r'^\.method.*?^\.end method', re.MULTILINE | re.DOTALL)
            methods       = methodPattern.findall(classContent)

            # Convert methods to dictionaries with className, methodSignature, and content fields
            for index, method in enumerate(methods, start=1):
                # Split the method content into lines
                methodLines = method.strip().splitlines()
                # The first line is the method signature
                methodSignature = methodLines[0].strip()
                
                smaliMethodsList.append({
                    'className'        : className,
                    'methodSignature'  : methodSignature,
                    'content'          : method.strip()
                })


        # Get Number of Methods
        self.numMethods = len(smaliMethodsList)
        print(f"--- #️⃣ Methods: {self.numMethods}")

        # Store Results
        self.smaliCodeMethods = smaliMethodsList

    # Filtering
    def filterSmaliClasses(self):
        print("--- ⭕ Class Filtering ")
        print("--- 0️⃣ N. Classes Start         ---> {}".format(self.numClasses))

        # Initialize lists for libraries and system libraries
        libraries = []
        systemLibraries = []

        # Read Libraries if libsFile is provided
        with open(LIBRARIES_PATH, 'r') as file:
            libraries = [line.strip() for line in file.readlines()]

        with open(SYSTEMS_PATH, 'r') as file:
                systemLibraries = [line.strip() for line in file.readlines()]

        # System Libraries filtering
        if systemLibraries:
            filteredClasses = []
            for smaliClass in self.smaliCodeClasses[:]:
                className = smaliClass['className']
                if not any(className.startswith(sysLib) for sysLib in systemLibraries):
                    filteredClasses.append(smaliClass)

            self.smaliCodeClasses = filteredClasses
            self.numClasses       = len(self.smaliCodeClasses)
            print("--- 1️⃣ Filtering System Libs    ---> {}".format(self.numClasses))

        # 2 Third-party Libraries filtering
        if libraries:
            filteredClasses = []
            for smaliClass in self.smaliCodeClasses[:]:
                className = smaliClass['className']
                if not any(className.startswith(lin) for lin in libraries):
                    filteredClasses.append(smaliClass)

            # Update self.smaliCodeClasses with the filtered list for libraries
            self.smaliCodeClasses = filteredClasses
            self.numClasses       = len(self.smaliCodeClasses)
          
            print("--- 2️⃣ Filtering 3rd-pary Libs  ---> {}".format(self.numClasses))

            
        # Recreate the methods.
        self.getSmaliMethods()


### Utilities Methods ###
def printSmaliMethod(smaliMethod):
        print("\n--- 🔹 Class ID   : {}".format(smaliMethod.get('className', 'N/A')))
        print("--- 🔹 Method ID  : {}".format(smaliMethod.get('methodSignature', 'N/A')))
        print("--- 🔹 Content    :")
        print("--------------------------")
        print(smaliMethod.get('content', 'N/A').strip())
        print("--------------------------")