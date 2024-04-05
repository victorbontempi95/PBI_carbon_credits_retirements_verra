# Carbon Credits Retirements - Verra


### Introduction

This dashboard has 3 main objectives:

- Finding companies purchasing and retiring VCUs (carbon credits from Verra);
- Finding which projects are more popular;
- Discover similar projects based on their availability.


Some institutions are developing environment-friendly projects that avoid CO2 emissions or sequester CO2 from the atmosphere. These projects are validated by certifiers, such as Verra, so they can issue carbon credits and generate income by selling those credits.

Companies purchase carbon credits to offset their CO2 emissions. For many players in the environmental commodities market, is important to know who is active on the market, to try to make business with them, similar companies or just for market research purposes.

Also, it's essential to keep track of which type of carbon credits companies buy. Important characteristics determine whether a carbon credit is better or more suited to a company's objectives than others.

We are monitoring VCUs, carbon credits issued by Verra, the certifier with the most significant volume. Relevant competitors include CDM, Gold Standard, CERCARBONO, and others, which we won't cover here.

<br>

### Important Concepts

Before explaining how to use the dashboard better, I'll explain some keywords and concepts about CO2 offset.

First of all, 1 carbon credit is equivalent to 1 ton of CO2. So, if a company purchases and retires 100,000 carbon credits, that means they are offsetting 100,000 tons of CO2 from their emissions.

With that information, you may ask: can a company buy any carbon credit to offset its emissions?

It depends.

There are countries with well-defined regulations that determine the characteristics of the projects for companies to offset and oblige companies to offset a part of their emissions. Some countries don't have that type of regulation, so companies can offset their emissions with whatever credit they want.

This is one of the most important uses of this dashboard: understanding the behaviour of companies within a sector, region, etc.

Some of the main characteristics to understand if a project may be suitable for a company's offset are:

Vintage: The year of the credit's generation. If we say that a credit is V15, it means that it represents CO2 reductions or sequestration from 2015. If it is V20, it represents sequestration from 2020. A V21 credit can be issued in 2023, but since the reduction happened in 2021, it's a V21 credit.

Project Type: A project that protects a forest is under the AFOLU (Agriculture Forestry and Other Land Use) category. A project that reduces CO2 emissions by generating energy via renewable sources is under the Energy Industries category.

Additional Certifications: Some projects have co-benefits linked to them, such as improving the quality of life in surrounding communities or avoiding species' extinction. These co-benefits can be checked through certifications like CCB, Social Carbon, CORSIA, and others.

Proponent: The company responsible for the project's development.

These are some of the main characteristics that help companies guide their offsetting decisions.

<br>

### Usage

While working at an environmental commodities company, I developed a similar dashboard to find companies who were retiring carbon credits so we could try to do business with them.

On the first page of the dashboard, we can use date filters to discover which companies are offsetting this week or this month, for instance.

Besides the company table, we have views for Project IDs and Vintages.

With those, we can check if a specific project has been under the spotlight in the last couple of days or if there has been some change in the behavior of the companies regarding how old the credits are. If relevant companies use 10-year credits to offset their emissions, they could look more attractive to similar companies.

<br>

![retirements_dt](https://github.com/victorbontempi95/carbon_credits_retirements_verra/assets/155546577/1e69b07a-8637-49c8-b9f8-f7abb24e7ec2)

<br>


If we want further information regarding those retirements, we can use the drill-through button to see filtered info on the second page, 'Retirements Details':

<br>

![retirements_det_ss](https://github.com/victorbontempi95/carbon_credits_retirements_verra/assets/155546577/9969ec3a-f1e9-4104-8eac-87519d81a49e)

<br>

In this example, we filtered the 2024 retirements and selected the top retirer company for the period, Shell. Then, we used the drill-through to go to the retirement details page.

On the retirement details page, we can see that Shell is offsetting its emissions with credits from different vintages, ranging from 2015 to 2021, with the majority coming from 2016-20.

We can also see that over half of their retirements during the period came from Asian projects and +80% from AFOLU projects.

With this information, we could try to persuade competitors to buy similar credits, contact the proponents of those projects to establish some type of partnership to commercialize the credits, or even contact existing partners to see if there is any opportunity to make deals with those exact or similar credits.

Next, we have the available page. So far, we have checked past retirements to see what kind of projects companies are in demand for. With the characteristics of those projects in hand, we can use the available page to find similar credits.

<br>

![available_ss](https://github.com/victorbontempi95/carbon_credits_retirements_verra/assets/155546577/d044efdb-25c1-4858-b778-a3231c272e40)

<br>

Let's say a client is looking for V20 credits for AFOLU projects. We can use some filters to understand which credits are available with those characteristics and who their proponents are. With that information, we can contact the proponents and check the real availability of those credits, which can ultimately lead to actual deal-making.

<br>

![available_v20_afolu](https://github.com/victorbontempi95/carbon_credits_retirements_verra/assets/155546577/0908e003-dfac-478d-8f99-72a65d24a647)

<br>

Sometimes, companies have restrictions based on which countries they have activities in. For that, the map can be handy.

<br>

### Data Source and License:

All information is publicly available on [Verra's](https://registry.verra.org/app/search/VCS) website.

More details of the methodology for developing carbon credits projects also can be found on their website.

To extract the files for available credit information and past retirements, check the VCUs tab filter by 'Status' and download the Excel file.

To generate the registered projects, search the 'Registered' tab without filters and download the Excel file.

<br>

# Data Treatment

When downloading the file from Verra's website, you get an Excel file. We could upload this file directly on Power BI and transform data with Power Query.

However, to practice the ETL process, I decided to upload the database to SQL and then connect MySQL to Power BI. It also became more accessible to do quick consultations and investigations on the data via SQL.

To upload the file to SQL, I first tried to switch from XLSX to CSV in Google Sheets, but there was a problem with the type of characters in 'Retirement Beneficiary,' the column with the company who retired the credits. That is probably because the retirement register can be made by people worldwide. I tried fixing this problem by switching the encoding to UTF-8 when saving the file as CSV, but it still returned an error when loading the data to SQL.

I fixed the problem with Python using the code below, replacing all non-ASCII characters with ' '.

![image](https://github.com/victorbontempi95/carbon_credits_retirements_verra/assets/155546577/47e338e1-c5b5-4a6a-a11e-fbab3778eb1f)

I seized the opportunity to do some primary treatment with Python, like dropping unnecessary columns.

After that, I could load the data to SQL without a problem.

I'm making all files available here.


