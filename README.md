<div align="center"> <h1>Android App Compliance with LLMs</h1> </div>

In this repository, we host all the data and code related to our paper titled "Toward LLM-Driven GDPR Compliance Checking for Android Apps".

# 📜 Abstract

>Android apps extensively collect sensitive personal data from our devices daily. Despite stringent regulations like the European Union's General Data Protection Regulation (GDPR), many applications (apps) fail to comply with these legal requirements. While previous studies have focused on the compliance of privacy policies, checking how these policies are implemented in the actual code has not yet been extensively investigated. Moreover, previous efforts have often been limited in scope. This paper explores the potential of Large Language Models (LLMs) to address the challenge of verifying privacy regulation compliance in Android apps. Specifically, we address scenarios where source code is unavailable by investigating whether LLM can work with Smali code—a human-readable representation of Android bytecode extracted from APK files. Through this exploratory investigation, we aim to uncover if LLMs can bridge the gap between legal privacy requirements and their technical implementation in mobile apps. Through initial experiments, we assess the feasibility and effectiveness of a straightforward LLM-driven method for identifying compliance issues and provide directions for our future research efforts to improve our approach and perform large-scale experiments.

This is the prompt we used for our experiments:

### 🔍 Prompt Used in Experiments
<div align="left">
<pre>
You are an expert in Android app security, with a focus on Smali code analysis.
You have to analyze a Smali method extracted from an APK.
Your objective is to determine if this method [SPECIFIC REQUEST DEPENDING ON THE REQUIREMENT].

Answer only YES/NO and provide a brief explanation.
Answer YES if there is indisputable evidence that the method is designed for this purpose.
Answer NO if such evidence is absent.

Here is the Smali code to analyze:
[SMALI CODE OF THE METHOD]
</pre>
</div>

### 🗂️ Repository Organization

The repository is organized into several key directories, each serving a specific purpose:

* **📁 0_Data**  

  This directory contains all the data related to our experiments such as the entire source code of our demo application i.e., RegApp, the  APK files (RegApp and WordPress), and the results of our analysis.

* **📂 1_Code**  
  Contains all the code relative to our approach. There is one main Jupyter Notebooks to facilitate execution that can be used to run experiments as well as supplementary code needed to execute the notebook.

### 📋 Requirements

#### 🖥️ OLLAMA Server

To run LLMs locally, we use **OLLAMA** ([GitHub Repository](https://github.com/ollama/ollama)). 

1. **Set up the OLLAMA server** and install `llama3.1` by following the instructions on their GitHub page.
2. **Configure the connection** by specifying details in a `.env` file as follows:

    ```bash
    OLLAMA_SERVER = [SERVER]
    ```

#### 🔧 ApkTool
To decompile APKs, **ApkTool** must be installed on your system. Follow the steps below to set it up:

1. **Download ApkTool:**  
   Visit the official ApkTool page at [https://ibotpeaches.github.io/Apktool/](https://ibotpeaches.github.io/Apktool/) and download the latest version.

2. **Install ApkTool:**  
   Follow the installation instructions for your operating system, which typically involve:

   - Placing the downloaded JAR file in a suitable directory.
   - Adding the ApkTool executable to your system's PATH for easier access.

3. **Verify Installation:**  
   Ensure ApkTool is installed correctly by running the following command in your terminal:

    ```bash
    apktool
    ```

   This should display the ApkTool usage instructions if the installation was successful.


#### 🐍 Conda Environment

To launch the Jupyter Notebook, you will need various libraries. We provide a **requirements.txt** file which you can use to create a conda environment.

Follow the steps below:

1. **Create a conda environment named `demoEnv`:**

    ```bash
    conda create --name demoEnv python=3.8
    ```

2. **Activate the newly created environment:**

    ```bash
    conda activate demoEnv
    ```

3. **Install the required packages using `pip` and `requirements.txt`:**

    ```bash
    pip install -r requirements.txt
    ```

Once these steps are complete, your environment will be set up with all the necessary libraries.

### ⚙️ Usage

#### 🐍 Python Execution

The provided Jupyter Notebook facilitates the execution of our approach. 

The main notebook is **`Experiments.ipynb`**. 

It processes the **`regApp.apk`** or **`wordPress.apk`**  in three phases as described in the paper:

1. **Decompiling APK.**
2. **Preprocessing.**
3. **LLM Inference.**

The results are saved to a `.json` file for further analysis.

#### License
This dataset is licensed under a Creative Commons Attribution 4.0 International License.
