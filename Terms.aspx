<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Terms.aspx.cs" Inherits="ElaibraryManagement.Terms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style>
        .terms-container {
            padding: 50px;
            background-color: #f4f4f4;
            border-radius: 10px;
            margin-top: 20px;
            text-align: left;
        }

        .terms-header {
            font-size: 2.5em;
            margin-bottom: 20px;
            color: #333;
        }

        .terms-section {
            margin-bottom: 30px;
        }

        .terms-section h2 {
            font-size: 2em;
            margin-bottom: 15px;
            color: #444;
        }

        .terms-text {
            font-size: 1.2em;
            line-height: 1.6;
            color: #666;
        }

        .terms-list {
            margin-left: 20px;
        }

        .terms-list li {
            margin-bottom: 10px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 terms-container">
                <h1 class="terms-header">Terms and Conditions</h1>

                <div class="terms-section">
                    <h2>1. Introduction</h2>
                    <p class="terms-text">
                        Welcome to [Your Company Name]. These Terms and Conditions outline the rules and regulations for the use of our website and services. By accessing or using our site, you agree to comply with these terms. If you do not agree with any part of these terms, please do not use our site.
                    </p>
                </div>

                <div class="terms-section">
                    <h2>2. Use of Our Services</h2>
                    <p class="terms-text">
                        You may use our website and services for lawful purposes only. You agree not to use our site in any way that could damage, disable, overburden, or impair it. You also agree not to interfere with any other party's use and enjoyment of our site.
                    </p>
                </div>

                <div class="terms-section">
                    <h2>3. Account Responsibility</h2>
                    <p class="terms-text">
                        If you create an account on our site, you are responsible for maintaining the confidentiality of your account information and for all activities that occur under your account. You agree to notify us immediately of any unauthorized use of your account or any other breach of security.
                    </p>
                </div>

                <div class="terms-section">
                    <h2>4. Intellectual Property</h2>
                    <p class="terms-text">
                        All content, trademarks, and other intellectual property on our site are owned by or licensed to us. You may not reproduce, distribute, or create derivative works from any content on our site without our express written permission.
                    </p>
                </div>

                <div class="terms-section">
                    <h2>5. User Content</h2>
                    <p class="terms-text">
                        By submitting any content (e.g., reviews, comments, or other materials) to our site, you grant us a perpetual, irrevocable, royalty-free, worldwide license to use, reproduce, modify, and display such content. You are solely responsible for any content you submit and for ensuring that it does not violate any laws or third-party rights.
                    </p>
                </div>

                <div class="terms-section">
                    <h2>6. Limitation of Liability</h2>
                    <p class="terms-text">
                        To the maximum extent permitted by law, [Your Company Name] shall not be liable for any indirect, incidental, special, or consequential damages arising from your use of our site or services, even if we have been advised of the possibility of such damages.
                    </p>
                </div>

                <div class="terms-section">
                    <h2>7. Dispute Resolution</h2>
                    <p class="terms-text">
                        Any disputes arising out of or related to these Terms and Conditions or your use of our site or services shall be resolved through binding arbitration in accordance with the rules of [Arbitration Association]. The arbitration shall take place in [City, State/Country].
                    </p>
                </div>

                <div class="terms-section">
                    <h2>8. Changes to Terms</h2>
                    <p class="terms-text">
                        We reserve the right to modify these Terms and Conditions at any time. Any changes will be effective immediately upon posting on our site. Your continued use of our site following any changes constitutes your acceptance of the new terms.
                    </p>
                </div>

                <div class="terms-section">
                    <h2>9. Privacy Policy</h2>
                    <p class="terms-text">
                        Your use of our site is also governed by our Privacy Policy, which outlines how we collect, use, and protect your personal information. Please review our Privacy Policy for more information.
                    </p>
                </div>

                <div class="terms-section">
                    <h2>10. Governing Law</h2>
                    <p class="terms-text">
                        These Terms and Conditions are governed by and construed in accordance with the laws of [Your Country/State]. Any disputes arising under or in connection with these terms shall be subject to the exclusive jurisdiction of the courts of [Your Country/State].
                    </p>
                </div>

                <div class="terms-section">
                    <h2>11. Contact Us</h2>
                    <p class="terms-text">
                        If you have any questions about these Terms and Conditions, please contact us at:<br />
                        Email: support@[yourcompany].com<br />
                        Phone: +1-800-123-4567<br />
                        Address: [Your Company Address]
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>