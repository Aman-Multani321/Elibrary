<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ElaibraryManagement.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section>
         <img src="imaes/home-bg.jpg" class="img-fluid"/>
   </section>
       <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>Our Features</h2>
                  <p><b>Our 3 Primary Features -</b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <img width="150px" src="imaes/digital-inventory.png" />
                  <h4>Digital Book Inventory</h4>
                  <p class="text-justify">A Digital Book Inventory is an organized system that catalogues and manages digital books and eBooks,
                      enabling users to easily access, search, and track their collections.
                      It can include features like categorization by genre, author, and publication date, 
                      as well as functionalities for adding, editing, and removing books. Such systems often offer tools 
                      for user reviews, ratings, and recommendations, enhancing the user experience. Additionally,
                      a digital book inventory can provide insights into popular titles and trends,
                      aiding both personal collection management and commercial inventory oversight.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="imaes/search-online.png" />
                  <h4>Search Books</h4>
                  <p class="text-justify">Search Books functionality allows users to efficiently locate specific books within a collection or database. 
                      It typically includes filters such as title, author, genre, and publication date, enabling users to narrow down their search results. 
                      Advanced search features might also include keyword searching within book descriptions or content.
                      This functionality is essential for large collections, as it saves time and improves the user experience by quickly
                      connecting readers with the books they're interested in. Additionally, 
                      it can include suggestions and recommendations based on user searches and preferences.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="imaes/defaulters-list.png" />
                  <h4>Defaulter List</h4>
                  <p class="text-justify">Defaulter List functionality helps identify users who have overdue books or 
                      outstanding payments in a library or digital book inventory system. This feature maintains a record of 
                      individuals who haven't returned borrowed items on time or have unpaid fines. It is essential for ensuring
                      accountability and proper management of resources. By keeping track of defaulters, the system can send reminders, 
                      restrict further borrowing until dues are cleared, and maintain an organized and efficient borrowing process.
                      This functionality supports library staff in managing collections and encourages timely returns,
                      benefiting both the library and its users.</p>
               </center>
            </div>
         </div>
      </div>
   </section>
    <section>
     <img src="imaes/in-homepage-banner.jpg" class="img-fluid"/>
   </section>
     <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>Our Process</h2>
                  <p><b>We have a Simple 3 Step Process</b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <img width="150px" src="imaes/sign-up.png"  />
                  <h4>Sign Up</h4>
                  <p class="text-justify">Sign Up allows new users to create an account by providing necessary details to access the system's services.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="imaes/search-online.png"/>
                  <h4>Search Books</h4>
                  <p class="text-justify">Search Online lets users find books or other resources available in the system's inventory.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="imaes/library.png"/>
                  <h4>Visit Us</h4>
                  <p class="text-justify">Library provides a collection of books and resources available for borrowing or reference.</p>
               </center>
            </div>
         </div>
      </div>
   </section>
</asp:Content>
