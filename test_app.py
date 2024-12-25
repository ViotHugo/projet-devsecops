import pytest
from app import app

@pytest.fixture
def client():
    with app.test_client() as client:
        yield client

    response = client.get('/')
    assert response.data == b"Bienvenue dans l'application Flask DevSecOps !"

def test_home(client):
    response = client.get('/')
    assert response.data.decode('utf-8') == "Bienvenue dans l'application Flask DevSecOps !"
