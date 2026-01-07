from model import match_resume

def test_match():
    resume = "Python Machine Learning Data Analysis"
    job = "Looking for Python and ML engineer"

    score = match_resume(resume, job)
    assert score > 0

