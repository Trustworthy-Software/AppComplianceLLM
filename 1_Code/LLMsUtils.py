import ollama
import os

# Create Prompt with Code
def createPromptWithCode(msg, code):
    return msg + "\n" + code  

 
class OllamaInterface:
    # Fields
    model  = None
    client = None

    def __init__(self, model = 'llama3'):  

        # Create an Ollama client
        self.client = ollama.Client(host = os.environ["OLLAMA_SERVER"], timeout=30)

        # Set Model/Pricing
        self.model   =  model

    def sendRequest(self, prompt):
        response = self.client.chat(
            model = self.model, messages=[{'role': 'user','content': prompt}]
        )

        # Return Message
        return response['message']['content']