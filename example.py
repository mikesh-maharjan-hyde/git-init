import random
import datetime
import time
import json

# Mock list of cities
CITIES = [
    "London", "Tokyo", "San Francisco", "Nairobi",
    "Rio de Janeiro", "Reykjavik", "Cairo", "Sydney"
]

# Simulate fetching weather data from an API
def get_weather(city):
    # Mocked data
    return {
        "temperature_celsius": round(random.uniform(-5, 35), 1),
        "condition": random.choice(["Sunny", "Cloudy", "Rainy", "Snowy"]),
        "humidity": random.randint(30, 90),
    }

# Generate a weather report
def generate_report():
    city = random.choice(CITIES)
    weather = get_weather(city)
    now = int(time.time() * 1000)

    report = {
        "timestamp": now,
        "city": city,
        "weather": weather
    }

    return report

# Save report to file
def save_report(report, filename="weather_report.txt"):
    with open(filename, "a") as file:
        file.write(json.dumps(report) + "\n")
    print(f"Saved report for {report['city']} at {report['timestamp']}")

if __name__ == "__main__":
    report = generate_report()
    save_report(report)
