# Carbon Credits Retirements - Verra


### Introduction

This dashboard has 3 main objectives:

- Finding companies purchasing and retiring VCUs (carbon credits from Verra);
- Finding which projects are more popular;
- Discover similar projects, based on their availability.


There are institutions developing environment friendly projects, that avoid CO2 emissions or sequester CO2 from the atmosphere. These projects are validated by certifiers, such as Verra, so they can issue carbon credits and generate income through the selling of those credits.

Companies purchase carbon credits to offset their CO2 emissions. For many players in the environmental commodities market, is important to know who is active on the market, to try to make business with them, similar companies or just for market research purposes.

Also, it's important to keep track of which type of carbon credits companies are buying. There are important characteristics to determine if a carbon credit is better or more suited to a company's objectives than others.

Important to say that we are monitoring VCUs, carbon credits issued by Verra, certifier with the largest volume. There are relevant competitors like CDM, Gold Standard, CERCARBONO, and others, which we won't cover here.

<br>

### Important Concepts

Before explaining how to better use the dashboard, i'll explain some key words and concepts about CO2 offset.

First of all, 1 carbon credit is equivalent to 1 ton of CO2. So if a company is purchasing and retiring 100,000 carbon credits, that means they are offsetting 100,000 tons of CO2 from what they emmited.

With that information you may ask: can a company buy any carbon credit to offset their emissions?

It depends.

There are countries with well defined regulations that determine characteristics of the projects for companies to offset and obly companies to offset a part of their emissions. Some countries don't have that type of regulation, so companies can offset their emissions with whatever credit they want.

This is one of the most important usages of this dashboard. Understand behaviour of companies within a sector, region and etc.

Some of the main characteristics to understand if a project may be suitable for a company's offset are:

Vintage: Year of generation of the credit. If we say that a credit is V15, it means that credit represents CO2 reductions or sequester from 2015. If is V20, from 2020. A V21 credit can be issued in 2023, but since the reduction happened in 2021, it's a V21 credit.

Project Type: A project that protects a florest is under the AFOLU (Agriculture Forestry and Other Land Use) category. A project that reduces CO2 emissions by generating energy via renewable sources are under the Energy Industries category.

Additional Certifications: Some projects have co-benefits linked with them, such as improving life quality of surrounding communities or avoiding the extinction of species. These co-benefits can be checked through certifications like CCB, Social Carbon, CORSIA and others.

Proponent: Company responsible for the project's development.

These are some of the main characteristics that helps companies guiding their offseting decisions.

<br>

### Usage

While working at a environmental commodities company, I developed a similar dashboard with a primary goal of finding companies who were retiring carbon credits so we could try to make business with them.

In the first page of the dashboard, we can use date filters to discover which companies are offseting this week or this month for instance.

Besides the company table, we also have views for Project IDs and Vintages.

With those, we can check if there is a specific project under the spotlight in the last couple of days or if there is some change in the behaviour of the companies regarding how old the credits are. If relevant companies are using 10yo credits to offset their emissions, they could look more attractive for similar companies.

<br>

![retirements_dt](https://github.com/victorbontempi95/carbon_credits_retirements_verra/assets/155546577/1e69b07a-8637-49c8-b9f8-f7abb24e7ec2)

<br>


If we want further information regarding those retirements, we can use the drill through button to see filtered info on the second page, 'Retirements Details':

<br>

![retirements_det_ss](https://github.com/victorbontempi95/carbon_credits_retirements_verra/assets/155546577/9969ec3a-f1e9-4104-8eac-87519d81a49e)

<br>

In this example, we filtered the 2024 retirements and selected the top retirer company for the period, Shell. Then we used the drill through to go to the retirement details page.

In the retirement details page, we can see that Shell is offsetting their emissions with credits from different vintages, ranging from 2015 to 2021, with the majority of them coming from 2016-20.

We can also see that more than half of their retirements on the period came from Asian projects and +80% from AFOLU projects.

With this type of information, we could try to persuade competitors to buy similar credits, contact the proponents of those projects establish some type of partnership to commercialize the credits, or even contact existing partners to see if there is any opportunity on the table to make deals with those exact or similar credits.

Next, we have the available page. So far we have checked past retirements to check what kind of projects are on demand by companies. With the characteristics of those projects in hand, we can use the available page to find similar credits.

<br>

![available_ss](https://github.com/victorbontempi95/carbon_credits_retirements_verra/assets/155546577/79eb7332-3f41-48d4-8c6d-908fda7af3b3)

<br>

Let's say we have a client that is looking for V20 credits of AFOLU projects. We can use some filters to understand which credits are available with those characteristics and who are their proponents. With that information, we can contact the proponents and check the real availability of those credits, which can ultimately lead to actual deal making.

<br>

![available_v20_afolu](https://github.com/victorbontempi95/carbon_credits_retirements_verra/assets/155546577/2d347a2c-f7f7-4b3f-82cf-c5fa16b09814)

<br>

Sometimes companies have restrictions based on which countries they have activities on. For that, the map can be really useful.

<br>

### Data Source and License:

All information is public and available on Verra's website.

More details of the methodology for developing carbon credits projects also can be found on their website.

To extract the files for available credits information and past retirements, you can check the VCUs tab and filter by 'Status' and download the excel file.

To generate the registered projects, search the 'Registered' tab with no filters and download the excel file.



