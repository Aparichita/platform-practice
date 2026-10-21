from fastapi import FastAPI

app = FastAPI(title="Platform Practice API")


@app.get("/")
def home():
    return {"message": "Hello from my practice platform project"}


@app.get("/health")
def health():
    return {"status": "ok"}


@app.get("/predict")
def predict(sales: float = 100.0):
    # Tiny stand-in for an ML endpoint: replace with your own logic later
    return {"input": sales, "forecast": round(sales * 1.1, 2)}
