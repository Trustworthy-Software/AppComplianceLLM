import LLMsUtils

# Class representing an analysis
class Analysis:

    # App to be analyzed
    app      = None

    # Prompt tp be used
    prompt   = None
    
    # Analysis Results
    numCompliantMethods = None
    compliantMethods    = None

    # Initializers
    def __init__(self, app, prompt):
        self.app     = app
        self.prompt  = prompt

        self.numCompliantMethods = 0
        self.compliantMethods    = []


    def run(self, llmInterface):
            try:
                # Phase 1 : Extract all the smali code from the app
                self.app.extract()

                # Phase 2: Filtering and preprocessing.
                print("\n🔻 --- Filtering & Preprocessing --- 🔻") 

                # Filtering with AndroLibZoo
                self.app.filterSmaliClasses()
                
                # Print End
                print("\n--- ⏳ Extraction And Filtering ---> END")

                # Phase 3: Analyze smali methods using LLM
                print("\n🧪 --- LLM Analysis --- 🧪")
                print("--- 🧪 Model Used  : {}".format(llmInterface.model))


                # Test purposes
                #self.app.smaliCodeMethods = self.app.smaliCodeMethods[:10]

                totalMethods = len(self.app.smaliCodeMethods)  # Total number of methods
                for index, smaliMethod in enumerate(self.app.smaliCodeMethods):
                   
                    # Standard Way
                    # LLM request and processing
                    llmAnswer = llmInterface.sendRequest(LLMsUtils.createPromptWithCode(self.prompt, smaliMethod['content']))

                    if "yes" in llmAnswer.lower():
                        print("--- ✅ Compliant methods found: {} --> {}".format(smaliMethod['className'], smaliMethod['methodSignature']))
                        # Update with results
                        self.numCompliantMethods += 1
                        self.compliantMethods.append({
                            "methodClass"    : smaliMethod['className'],
                            "methodSignature": smaliMethod['methodSignature'],
                            "methodContent"  : smaliMethod['content'],
                            "llmAnswer"      : llmAnswer
                        })
     
                    # Print progress every 100 methods
                    if (index + 1) % 100 == 0 or (index + 1) == totalMethods:
                        percentage = (index + 1) / totalMethods * 100
                        print(f"--- 🧪 Progress: {index + 1} methods out of {totalMethods} [{percentage:.2f}%]")

                print("--- 🧪 Results: ")
                print("--- 🧪 N. Compliant Methods : {} out of {} [{:.2f}%]".format(sharedData['numCompliantMethods'], len(self.app.smaliCodeMethods), sharedData['numCompliantMethods'] / len(self.app.smaliCodeMethods) * 100))

                # End LLM Analysis
                print("\n--- ⏳ LLM Analysis ---> END")
                print("\n--- ⏳ END ")
           
            except Exception as e:
                print(f"--- ⚠️ Error during execution: {e}")
