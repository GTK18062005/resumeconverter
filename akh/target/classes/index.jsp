<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Modern Professional Resume</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    :root {
      --primary: #4a6fa5;
      --primary-light: #6b8cbc;
      --primary-dark: #3a5a80;
      --secondary: #ff7e5f;
      --light-bg: #f8fafc;
      --white: #ffffff;
      --text: #2d3748;
      --text-light: #4a5568;
      --text-lighter: #718096;
      --border: #e2e8f0;
      --shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
      --transition: all 0.3s ease;
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: 'Open Sans', sans-serif;
      color: var(--text);
      background: linear-gradient(135deg, #f5f7fa 0%, #e4e8f0 100%);
      line-height: 1.6;
      padding: 2rem;
      min-height: 100vh;
    }

    .background {
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: calc(100vh - 4rem);
    }

    .resume-container {
      display: flex;
      width: 100%;
      max-width: 1000px;
      background: var(--white);
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
      transition: var(--transition);
    }

    .sidebar {
      width: 35%;
      background: linear-gradient(135deg, var(--primary) 0%, var(--primary-dark) 100%);
      padding: 2.5rem 2rem;
      color: white;
      position: relative;
      overflow: hidden;
    }

    .sidebar::before {
      content: "";
      position: absolute;
      top: -50px;
      right: -50px;
      width: 150px;
      height: 150px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.1);
    }

    .profile-pic {
      width: 150px;
      height: 150px;
      object-fit: cover;
      border-radius: 50%;
      margin: 0 auto 1.5rem;
      border: 5px solid rgba(255, 255, 255, 0.2);
      display: block;
      box-shadow: var(--shadow);
      transition: var(--transition);
    }

    .profile-pic:hover {
      transform: scale(1.05);
    }

    .sidebar h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.8rem;
      font-weight: 700;
      margin-bottom: 0.5rem;
      text-align: center;
      color: white;
    }

    .title {
      font-size: 1.1rem;
      color: rgba(255, 255, 255, 0.9);
      margin-bottom: 2rem;
      text-align: center;
      font-weight: 400;
    }

    .contact {
      margin-bottom: 2.5rem;
    }

    .contact p {
      display: flex;
      align-items: center;
      font-size: 0.9rem;
      margin: 0.8rem 0;
      color: rgba(255, 255, 255, 0.9);
    }

    .contact i {
      margin-right: 0.8rem;
      width: 20px;
      text-align: center;
      color: var(--secondary);
    }

    .section {
      margin-bottom: 2.5rem;
    }

    .section h2 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.3rem;
      font-weight: 600;
      margin-bottom: 1.2rem;
      position: relative;
      padding-bottom: 0.5rem;
      color: white;
    }

    .section h2::after {
      content: "";
      position: absolute;
      bottom: 0;
      left: 0;
      width: 50px;
      height: 3px;
      background: var(--secondary);
    }

    .skills {
      list-style: none;
      padding: 0;
      display: flex;
      flex-wrap: wrap;
      gap: 0.6rem;
      margin-top: 1rem;
    }

    .skills li {
      background: rgba(255, 255, 255, 0.1);
      color: white;
      padding: 0.5rem 1rem;
      border-radius: 20px;
      font-size: 0.85rem;
      border: 1px solid rgba(255, 255, 255, 0.2);
      transition: var(--transition);
    }

    .skills li:hover {
      background: var(--secondary);
      transform: translateY(-2px);
    }

    .main-content {
      width: 65%;
      padding: 2.5rem;
    }

    .main-content .section {
      margin-bottom: 2.5rem;
    }

    .main-content .section h2 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.4rem;
      font-weight: 600;
      margin-bottom: 1.2rem;
      color: var(--primary);
      border-left: 4px solid var(--secondary);
      padding-left: 1rem;
    }

    .card {
      background: var(--white);
      padding: 1.5rem;
      margin-bottom: 1.5rem;
      border-radius: 8px;
      box-shadow: var(--shadow);
      transition: var(--transition);
      border-top: 3px solid transparent;
    }

    .card:hover {
      transform: translateY(-5px);
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
      border-top-color: var(--secondary);
    }

    .card h3 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.1rem;
      font-weight: 600;
      margin-bottom: 0.3rem;
      color: var(--primary-dark);
    }

    .card p {
      font-size: 0.95rem;
      color: var(--text-light);
      margin-bottom: 0.8rem;
    }

    .card p em {
      font-style: normal;
      color: var(--primary);
      font-weight: 500;
    }

    .card ul {
      margin-left: 1.2rem;
      margin-top: 0.8rem;
    }

    .card ul li {
      font-size: 0.95rem;
      margin-bottom: 0.5rem;
      color: var(--text-light);
      position: relative;
      padding-left: 1.2rem;
    }

    .card ul li::before {
      content: "•";
      color: var(--secondary);
      font-weight: bold;
      position: absolute;
      left: 0;
    }

    .timeline-item {
      position: relative;
      padding-left: 2rem;
      margin-bottom: 2rem;
    }

    .timeline-item::before {
      content: "";
      position: absolute;
      left: 0;
      top: 5px;
      height: 100%;
      width: 2px;
      background: var(--primary-light);
    }

    .timeline-item::after {
      content: "";
      position: absolute;
      left: -4px;
      top: 5px;
      width: 10px;
      height: 10px;
      border-radius: 50%;
      background: var(--secondary);
    }

    @media (max-width: 768px) {
      .resume-container {
        flex-direction: column;
      }
      
      .sidebar, .main-content {
        width: 100%;
      }
      
      .sidebar {
        padding: 2rem 1.5rem;
      }
      
      .main-content {
        padding: 2rem 1.5rem;
      }
      
      .profile-pic {
        width: 120px;
        height: 120px;
      }
    }

    @media print {
      body {
        background: none;
        padding: 0;
        font-size: 12pt;
      }
      
      .resume-container {
        box-shadow: none;
        max-width: 100%;
      }
      
      .sidebar {
        background: var(--primary) !important;
        -webkit-print-color-adjust: exact;
        print-color-adjust: exact;
      }
      
      a {
        text-decoration: none;
        color: var(--text);
      }
      
      .no-print {
        display: none;
      }
    }

    .social-links {
      display: flex;
      justify-content: center;
      gap: 1rem;
      margin-top: 1.5rem;
    }

    .social-links a {
      color: white;
      background: rgba(255, 255, 255, 0.1);
      width: 36px;
      height: 36px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      transition: var(--transition);
    }

    .social-links a:hover {
      background: var(--secondary);
      transform: translateY(-3px);
    }
  </style>
</head>
<body>
  <div class="background">
    <div class="resume-container">
      <aside class="sidebar">
        <img src="uploads/thanu.jpg" alt="Profile" class="profile-pic">
        <h1>${userData.name}</h1>
        <p class="title">${userData.branch}</p>
        
        <div class="contact">
          <p><i class="fas fa-envelope"></i> ${userData.email}</p>
          <p><i class="fas fa-phone"></i> ${userData.phoneNumber}</p>
          <p><i class="fas fa-map-marker-alt"></i> ${userData.country}</p>
        </div>
        
        <div class="section">
          <h2>Skills</h2>
          <ul class="skills">
            <li>Python</li>
            <li>JavaScript</li>
            <li>HTML/CSS</li>
            <li>React</li>
            <li>Node.js</li>
            <li>SQL</li>
            <li>Git</li>
            <li>Docker</li>
            <li>Data Structures</li>
            <li>Algorithms</li>
          </ul>
        </div>
        
        <div class="section">
          <h2>Languages</h2>
          <ul class="skills">
            <li>English (Fluent)</li>
            <li>Spanish (Intermediate)</li>
          </ul>
        </div>
        
        <div class="social-links no-print">
          <a href="${userData.linkedin}"><i class="fab fa-linkedin-in"></i></a>
          <a href="${userData.github}"><i class="fab fa-github"></i></a>
          <a href="${userData.twitter}"><i class="fab fa-twitter"></i></a>
        </div>
      </aside>

      <main class="main-content">
        <section class="section">
          <h2>Education</h2>
          <div class="card">
            <h3>${userData.university}</h3>
            <p><em>Bachelor of Science in Computer Science</em> | ${userData.graduationYear}</p>
            <ul>
              <li>GPA: ${userData.cgpa}</li>
              <li>Relevant Coursework: ${userData.courses}</li>
              <li>Activities: ${userData.activities}</li>
            </ul>
          </div>
        </section>

        <section class="section">
          <h2>Projects</h2>
          <div class="card">
            <h3>${userData.portfolioLink}</h3>
            <p><em>Personal Project</em> | ${userData.portfolioTools}</p>
            <ul>
              <li>${userData.portfolioDescription}</li>
            </ul>
          </div>
          
          <div class="card">
            <h3>${userData.project1Name}</h3>
            <p><em>Academic Project</em> | ${userData.project1Tools}</p>
            <ul>
              <li>${userData.project1Description}</li>
            </ul>
          </div>
          
          <div class="card">
            <h3>${userData.project2Name}</h3>
            <p><em>Hackathon Project</em> | ${userData.project2Tools}</p>
            <ul>
              <li>${userData.project2Description}</li>
            </ul>
          </div>
          
      <!-- <div class="card">
            <h3>${userData.project3Name}</h3>
            <p><em>Personal Project</em> | ${userData.project3Tools}</p>
            <ul>
              <li>${userData.project3Description}</li>
            </ul>
          </div>
          
             <div class="card">
            <h3>${userData.project4Name}</h3>
            <p><em>Freelance Project</em> | ${userData.project4Tools}</p>
            <ul>
              <li>${userData.project4Description}</li>
            </ul>
          </div> --> 
        </section>

        <section class="section">
          <h2>Experience</h2>
          <div class="card">
            <h3>Web Developer Intern</h3>
            <p><em>${userData.companyName}</em> | Summer 2024</p>
            <ul>
              <li>${userData.companyDescription}</li>
            </ul>
          </div>
        </section>

        <section class="section">
          <h2>Certifications</h2>
          <div class="card">
            <ul>
              <li><strong>${userData.coursera}</strong> - Coursera (2023)</li>
              <li><strong>${userData.freeCodeCamp}</strong> - FreeCodeCamp (2022)</li>
              <li><strong>${userData.aws}</strong> - AWS (2024)</li>
              <li><strong>${userData.codeTantra}</strong> - CodeTantra</li>
              <li><strong>${userData.hackerRank}</strong> - HackerRank</li>
            </ul>
          </div>
        </section>
      </main>
    </div>
  </div>
</body>
</html>