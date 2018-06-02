# jsp-servlet-JDBC-sandbox

#### .gitignore
* Files and folder structures are added into .gitignore based on [document](https://github.com/github/gitignore/blob/master/Global/JetBrains.gitignore)

#### Tomcat, JBoss or Glassfish
* The main difference between these servers is explained here in [doc](https://stackoverflow.com/questions/3821640/what-is-the-difference-between-tomcat-jboss-and-glassfish)

#### Branch : JSP Fundamentals
* How to include pages into JSP

#### Branch: readHTMLFormDataWithJSP
* Building forms using HTML
* Reading Form Data with JSP
* Building drop-down list
* Read data from drop-down list
* Building radio form list
* Read data from radio form
* Building check-box form
* Read data from check-box 

#### Branch: State Management with JSP
* Session Tracking with JSP
* Session object always kept in Tomcat's memory
* More session object information [here](https://tomcat.apache.org/tomcat-5.5-doc/servletapi/javax/servlet/http/HttpSession.html) 

#### Branch: JSP Tags
* JSTL tags
* Custom tags
* Every page that uses tags should include the link to uri even for an include page
* Core tags
    * for-each
    * if
        * else (test = "not ${}") 
    * choose
        * when
        * otherwise
#### Branch: Function Tags
* length
* lowercase
* upperCase
* endsWith
* split
* join
    
#### Branch: i18n 
* i18n - designing the application for various languages without changing the source code
* locale = language + region 
    * en_US = English(US)
    * en_GB = English(UK)
    * zh_CN = Chinese(Simplified)
* Another way to look at the differences is
    * Change in date format
    * Change in currencies 
* Functions
    * Setting Locale
    * Messaging
    * Number and Date Formatting
* Steps
    * Create a resource file with language_REGION suffix
    * Create JSP pages with labels
    * Setting locale based on user selection
* i18n and L10N are bit easier using spring mvc I guess. And probably by using Google API translate. Haven't tried it yet. [link](https://medium.com/i18n-and-l10n-resources-for-developers/quick-introduction-to-internationalization-for-spring-mvc-b4b8c7ed0507)

### servlet-fundamentals
* Basic annotations for naming and urlpatterns for servlets
* Difference between get and post methods
* Difference between servlet and jsp

### Reading servlet parameters from web.xml
* Write information about servlet parameters in web.xml
* Use getServletContext() helper class to read and parse the information in web.xml
* Use getInitParameters to read its values 
* Note: This method has a scope to all the servlets in the applications, not specific to any servlet

#### Git flow
* Following gitflow workflow from this [article](https://nvie.com/posts/a-successful-git-branching-model/)

#### Issues faced in this project
* [How to add external jar files to the project](https://stackoverflow.com/questions/1051640/correct-way-to-add-external-jars-lib-jar-to-an-intellij-idea-project)
    * Just copy-paste the .jar under the libs folder, right click on it and select 'Add as library' option from the list. It will do the rest.
* Auto-format in intelliJ for jsp files is all out of sync and not pretty
    * Solved through [this](https://stackoverflow.com/questions/34710762/intellij-jsp-formatting?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa) 
* How to write comments in properties file
    * Using # single comments. [Link](https://stackoverflow.com/questions/4156600/can-we-have-multiline-comments-in-a-java-properties-file)
* How to view quick inline documentation
    * Using Ctrl + Q and mouse hover [link](https://stackoverflow.com/questions/11053144/how-to-see-javadoc-in-intellij-idea) 
* Be careful in naming the properties file name. Any small typo in the name of the file will cause the application not able to read the information
    * For instance: {mylabels._de_DE.properties => mylabels_de_DE.properties} 
* Unable to display native font from foreign languages correctly. Possible character-encoding issue
* How to merge two repos?
* How to manually add dependencies or setting up tomcat to a blank project in IntelliJ
* What's an artifact? 
* How to print values from an enumeration?
* How to provide servlet specific init param in the web.xml?

#### Tutorials
* Architecture overview for Java EE 8 applications [here](https://docs.oracle.com/javaee/7/tutorial/overview003.htm)
* What is a session? Types of sessions? Read this [blog](https://machinesaredigging.com/2013/10/29/how-does-a-web-session-work/) 

#### Thanks and Credits
* I have learned these tutorials from [Udemy by Chad Darby](https://www.udemy.com/jsp-tutorial/learn/v4/content). Please learn more in-depth tutorials from Chad Darby. 
