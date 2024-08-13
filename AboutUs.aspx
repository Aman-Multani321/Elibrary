<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="ElaibraryManagement.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .about-us-container {
            padding: 50px;
            background-color: #f4f4f4;
            border-radius: 10px;
            margin-top: 20px;
            text-align: center;
        }

        .about-us-header {
            font-size: 2.5em;
            margin-bottom: 20px;
            color: #333;
        }

        .about-us-section {
            margin-bottom: 40px;
        }

        .about-us-section h2 {
            font-size: 2em;
            margin-bottom: 15px;
            color: #444;
        }

        .about-us-text {
            font-size: 1.2em;
            line-height: 1.6;
            color: #666;
        }

        .about-us-team img {
            border-radius: 50%;
            margin-bottom: 10px;
            width: 100px;
            height: 100px;
        }

        .about-us-team h3 {
            font-size: 1.5em;
            margin-top: 10px;
            color: #333;
        }

        .about-us-team p {
            font-size: 1em;
            color: #777;
        }

        .about-us-values {
            display: flex;
            justify-content: space-between;
            margin-bottom: 40px;
        }

        .about-us-value {
            width: 30%;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .about-us-value h3 {
            font-size: 1.8em;
            margin-bottom: 15px;
            color: #555;
        }

        .about-us-value p {
            font-size: 1.1em;
            color: #666;
        }

        .about-us-history-timeline {
            margin-bottom: 40px;
        }

        .about-us-history-timeline h2 {
            font-size: 2em;
            margin-bottom: 15px;
            color: #444;
        }

        .about-us-history-timeline .timeline-event {
            margin-bottom: 20px;
            padding: 15px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .timeline-event h3 {
            font-size: 1.5em;
            margin-bottom: 10px;
            color: #555;
        }

        .timeline-event p {
            font-size: 1.1em;
            color: #666;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 about-us-container">
                <h1 class="about-us-header">About Us</h1>

                <!-- Our Mission Section -->
                <div class="about-us-section">
                    <h2>Our Mission</h2>
                    <p class="about-us-text">
                        Our mission is to revolutionize the way libraries manage their resources by providing a modern, easy-to-use, and efficient platform. We are dedicated to making knowledge accessible to everyone, ensuring that library users and staff have the tools they need to succeed.
                    </p>
                </div>

                <!-- Our Vision Section -->
                <div class="about-us-section">
                    <h2>Our Vision</h2>
                    <p class="about-us-text">
                        We envision a world where libraries are not just repositories of books but vibrant hubs of learning and community engagement. Our platform is designed to support this vision by offering advanced features that cater to the needs of modern libraries, from inventory management to user interaction.
                    </p>
                </div>
                  <!-- Our Values Section -->
                <div class="about-us-section">
                    <h2>Our Core Values</h2>
                    <div class="about-us-values">
                        <div class="about-us-value">
                            <h3>Innovation</h3>
                            <p>We are constantly seeking new ways to improve and innovate, ensuring that our platform stays ahead of the curve.</p>
                        </div>
                        <div class="about-us-value">
                            <h3>Integrity</h3>
                            <p>We believe in doing the right thing, even when no one is watching. Our commitment to transparency and honesty is unwavering.</p>
                        </div>
                        <div class="about-us-value">
                            <h3>Excellence</h3>
                            <p>We strive for excellence in everything we do, from the quality of our software to the support we provide our users.</p>
                        </div>
                    </div>
                </div>
                <!-- Our Team Section -->
                <div class="about-us-section about-us-team">
                    <h2>Meet Our Team</h2>
                    <div class="row">
                        <div class="col-sm-4 text-center">
                            <img src="imaes/mem3.jpeg"  alt="Team Member 1" />
                            <h3>John Doe</h3>
                            <p>Founder & CEO</p>
                        </div>
                        <div class="col-sm-4 text-center">
                            <img src="imaes/mem2.jpeg"alt="Team Member 2" />
                            <h3>Jane Smith</h3>
                            <p>Chief Technology Officer</p>
                        </div>
                        <div class="col-sm-4 text-center">
                            <img src="imaes/mem1.jpg" alt="Team Member 3" />
                            <h3>Emily Johnson</h3>
                            <p>Head of Customer Relations</p>
                        </div>
                    </div>
                </div>

               <!-- Our History Section -->
                <div class="about-us-section about-us-history-timeline">
                    <h2>Our History</h2>
                    <div class="timeline-event">
                        <h3>2023 - Foundation</h3>
                        <p>Elaibrary Management was founded by a group of passionate library enthusiasts who saw the need for a better library management system.</p>
                    </div>
                    <div class="timeline-event">
                        <h3>2024 - First Major Update</h3>
                        <p>We released the first major update to our platform, introducing advanced inventory management features and user interaction tools.</p>
                    </div>
                    <div class="timeline-event">
                        <h3>2025 - Global Expansion</h3>
                        <p>Our platform gained traction worldwide, with libraries across the globe adopting Elaibrary Management to streamline their operations.</p>
                    </div>
                </div>

                <!-- Our Story Section -->
                <div class="about-us-section">
                    <h2>Our Story</h2>
                    <p class="about-us-text">
                        Elaibrary Management was founded in 2023 by a group of library enthusiasts who recognized the need for a better way to manage library operations. Frustrated with outdated systems and the complexities of managing large collections, our founders set out to create a platform that would simplify the process while enhancing the overall experience for both staff and patrons.
                    </p>
                    <p class="about-us-text">
                        Today, Elaibrary Management is used by libraries around the world to streamline their operations, improve efficiency, and better serve their communities. We are proud of our journey and committed to continuous improvement.
                    </p>
                </div>

                <!-- Testimonials Section -->
                <div class="about-us-section">
                    <h2>What Our Users Say</h2>
                    <div class="about-us-text">
                        <p>"Elaibrary Management has transformed the way we manage our library. The platform is user-friendly and the support team is always there to help." – Sarah L., Librarian</p>
                        <p>"We couldn't be happier with our decision to switch to Elaibrary Management. The platform is efficient, and our users love the new features." – Michael K., Library Director</p>
                    </div>
                </div>

                <!-- Contact Us Section -->
                <div class="about-us-section">
                    <h2>Contact Us</h2>
                    <p class="about-us-text">
                        We'd love to hear from you! Whether you have questions, feedback, or just want to learn more about our platform, feel free to reach out.
                    </p>
                    <p class="about-us-text">
                        Email: support@elibrarymanagement.com<br />
                        Phone: +1-800-123-4567
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
