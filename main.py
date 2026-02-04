from langchain.chat_models.base import init_chat_model
llm2 = init_chat_model(
    model="gemini-2.5-flash",
    temperature=0.7
)   
response2 = llm2.invoke("پورشه برای کدوم کشوره")
print(response2)