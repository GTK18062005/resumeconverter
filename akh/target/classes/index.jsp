<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <title>Upload Form</title>
    <style>
        .preview-container {
            margin: 1rem 0;
        }
        .preview-img {
            max-width: 200px;
            max-height: 200px;
            display: none;
            border: 2px solid #ccc;
            border-radius: 8px;
        }
        .error {
            color: red;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <h2>Upload Your Image and Info</h2>
    <p class="error">${message}</p>

    <form method="post" action="/up" enctype="multipart/form-data" id="uploadForm">
        <h3>Personal Information</h3>
        Image: <input type="file" name="image" id="imageInput" accept="image/*" required /><br>
        <div class="preview-container">
            <img id="imagePreview" class="preview-img" alt="Image Preview" />
        </div><br>
        Name: <input type="text" name="name" required /><br><br>
        Email: <input type="email" name="email" required /><br><br>
        Phone Number: <input type="number" name="phoneNumber" required /><br><br>
        Branch: <input type="text" name="branch" required /><br><br>
        Country: <input type="text" name="country" required /><br><br>
        University: <input type="text" name="university" required /><br><br>
        CGPA: <input type="text" name="cgpa" required /><br><br>
        Year of Graduation: <input type="number" name="graduationYear" required /><br><br>

        <h3>Online Profiles</h3>
        LinkedIn: <input type="text" name="linkedin" /><br><br>
        GitHub: <input type="text" name="github" /><br><br>
        Twitter: <input type="text" name="twitter" /><br><br>

        <h3>Academics</h3>
        Courses: <input type="text" name="courses" /><br><br>
        Activities: <input type="text" name="activities" /><br><br>

        <h3>Portfolio</h3>
        Portfolio Link: <input type="text" name="portfolioLink" /><br><br>
        Description:<br>
        <textarea name="portfolioDescription" rows="4" cols="50"></textarea><br><br>
        Tools Used: <input type="text" name="portfolioTools" /><br><br>

        <h3>Projects</h3>
        <h4>Project 1</h4>
        Name: <input type="text" name="project1Name" /><br><br>
        Description:<br>
        <textarea name="project1Description" rows="4" cols="50"></textarea><br><br>
        Tools: <input type="text" name="project1Tools" /><br><br>

        <h4>Project 2</h4>
        Name: <input type="text" name="project2Name" /><br><br>
        Description:<br>
        <textarea name="project2Description" rows="4" cols="50"></textarea><br><br>
        Tools: <input type="text" name="project2Tools" /><br><br>

        <h3>Experience</h3>
        Company Name: <input type="text" name="companyName" /><br><br>
        Company Description:<br>
        <textarea name="companyDescription" rows="4" cols="50"></textarea><br><br>

        <h3>Certifications</h3>
        Coursera: <input type="text" name="coursera" /><br><br>
        FreeCodeCamp: <input type="text" name="freeCodeCamp" /><br><br>
        AWS: <input type="text" name="aws" /><br><br>
        CodeTantra: <input type="text" name="codeTantra" /><br><br>
        HackerRank: <input type="text" name="hackerRank" /><br><br>

        <input type="submit" value="Submit" />
    </form>

    <script>
        document.getElementById('imageInput').addEventListener('change', function(event) {
            const file = event.target.files[0];
            const preview = document.getElementById('imagePreview');
            const errorMessage = document.querySelector('.error');

            // Reset error message
            errorMessage.textContent = '';

            if (file) {
                // Validate file type
                if (!file.type.startsWith('image/')) {
                    errorMessage.textContent = 'Please select an image file.';
                    event.target.value = '';
                    preview.style.display = 'none';
                    return;
                }

                // Validate file size (e.g., 5MB max)
                const maxSize = 5 * 1024 * 1024; // 5MB in bytes
                if (file.size > maxSize) {
                    errorMessage.textContent = 'File size exceeds 5MB.';
                    event.target.value = '';
                    preview.style.display = 'none';
                    return;
                }

                // Display image preview
                const reader = new FileReader();
                reader.onload = function(e) {
                    preview.src = e.target.result;
                    preview.style.display = 'block';
                };
                reader.readAsDataURL(file);
            }
        });
    </script>