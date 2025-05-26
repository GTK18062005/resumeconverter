package com;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Controller
public class Contro {

    @GetMapping("/")
    public String showForm(Model model) {
        model.addAttribute("userData", new UserData());
        return "upload.jsp"; // Refers to upload.jsp in src/main/webapp/WEB-INF/views/
    }

    @PostMapping("/up")
    public String handleFileUpload(@RequestParam("image") MultipartFile file,
                                   @ModelAttribute("userData") UserData user,
                                   Model model) {

        // Define a relative upload path within the application
        String uploadDir = System.getProperty("user.dir") + "/src/main/webapp/uploads/";
        String fileName = "thanu.jpg";
        String uploadPath = uploadDir + fileName;

        try {
            // Create the uploads directory if it doesn't exist
            File directory = new File(uploadDir);
            if (!directory.exists()) {
                directory.mkdirs();
            }

            // Validate file type (only images allowed)
            String contentType = file.getContentType();
            if (contentType == null || !contentType.startsWith("image/")) {
                model.addAttribute("message", "Error: Only image files are allowed!");
                return "upload.jsp";
            }

            // Save the file
            file.transferTo(new File(uploadPath));
            System.out.println("Image saved to: " + uploadPath);

            model.addAttribute("userData", user);
            model.addAttribute("message", "File uploaded successfully as thanu.jpg!");
            return "index.jsp"; // Refers to index.jsp in src/main/webapp/WEB-INF/views/
        } catch (IOException e) {
            e.printStackTrace();
            model.addAttribute("message", "Error uploading file: " + e.getMessage());
            return "upload.jsp";
        }
    }
}