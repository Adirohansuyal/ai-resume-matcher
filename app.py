import streamlit as st
from model import match_resume

st.title("AI Resume Skill Matchesssr new 🤖")

resume = st.text_area("Paste Resume Text")
job = st.text_area("Paste Job Description")

if st.button("Check Match"):
    if resume and job:
        score = match_resume(resume, job)
        st.success(f"Skill Match: {score}%")
    else:
        st.warning("Please provide both inputs")

