---
# Leave the homepage title empty to use the site title
title:
date: 2022-10-24
type: landing

sections:  
  - block: about.avatar
    id: about
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin
      # Override your bio text from `authors/admin/_index.md`?
      text:
  - block: features
    content:
      title: Skills
      items:
        - name: Julia          
          icon: julia
          icon_pack: custom
        - name: Matlab
          icon: matlab
          icon_pack: custom
        - name: Dynare
          icon: dynare
          icon_pack: custom
        - name: Python
          icon: python
          icon_pack: custom 
        - name: R          
          icon: r
          icon_pack: custom
        - name: Statistics          
          icon: chart-line
          icon_pack: fas
  - block: experience
    content:
      title: Education
      date_format: Jan 2006
      items:
        - title: PhD in Economics          
          company: Federal University of Santa Catarina               
          company_url: 'https://ufsc.br'          
          company_logo: ufsc-logo
          location: Florianópolis, Brazil
          date_start: '2016-03-01'
          date_end: '2020-03-20'
          description: |2-
              * **Thesis**: [Three essays on monetary and fiscal policy interactions](https://repositorio.ufsc.br/handle/123456789/216729)
              * **Supervisors**: [Jaylson Jair da Silveira](https://scholar.google.com/citations?user=EnUdUWgAAAAJ&hl=en) and [Guilherme Valle Moura](https://scholar.google.com.br/citations?user=OrhztjIAAAAJ&hl=en)
              * **Scholarship**: Coordination for the Improvement of Higher Education Personnel (CAPES) – Brazilian federal government agency
              * **Overall GPA**: 3.87/4.0
        - title: Visiting Scholar
          company: Università degli Studi di Milano‐Bicocca
          company_url: 'https://www.unimib.it'
          location: Milan, Italy
          date_start: '2018-09-01'
          date_end: '2019-03-30'
          description: |2-
              * **Supervisor**: [Alice Albonico](https://sites.google.com/view/alice-albonico)
              * **Scholarship**: Sandwich Doctorate ‐ Coordination for the Improvement of Higher Education Personnel (CAPES)
        - title: MSc. in Economics          
          company: Federal University of Santa Catarina
          company_url: 'https://ufsc.br'          
          location: Florianópolis, Brazil
          date_start: '2013-03-01'
          date_end: '2015-03-20'
          description: |2-
              * **Thesis**: [Extração de esforço de trabalho e diferenciais de salários em um ambiente macrodinâmico clássico](https://tede.ufsc.br/teses/PCNM0276-D.pdf)
              * **Supervisor**: [Jaylson Jair da Silveira](https://scholar.google.com/citations?user=EnUdUWgAAAAJ&hl=en)
              * **Scholarship**: National Council for Scientific and Technological Development (CNPq) – Brazilian federal government agency
              * **Overall GPA**: 3.76/4.0
    design:
      columns: '2'
  # - block: collection
  #   id: posts
  #   content:
  #     title: Recent Posts
  #     subtitle: ''
  #     text: ''
  #     # Choose how many pages you would like to display (0 = all pages)
  #     count: 5
  #     # Filter on criteria
  #     filters:
  #       folders:
  #         - post
  #       author: ""
  #       category: ""
  #       tag: ""
  #       exclude_featured: false
  #       exclude_future: false
  #       exclude_past: false
  #       publication_type: ""
  #     # Choose how many pages you would like to offset by
  #     offset: 0
  #     # Page order: descending (desc) or ascending (asc) date.
  #     order: desc
  #   design:
  #     # Choose a layout view
  #     view: compact
  #     columns: '2'
  # - block: portfolio
  #   id: projects
  #   content:
  #     title: Projects
  #     filters:
  #       folders:
  #         - project
  #     # Default filter index (e.g. 0 corresponds to the first `filter_button` instance below).
  #     default_button_index: 0
  #     # Filter toolbar (optional).
  #     # Add or remove as many filters (`filter_button` instances) as you like.
  #     # To show all items, set `tag` to "*".
  #     # To filter by a specific tag, set `tag` to an existing tag name.
  #     # To remove the toolbar, delete the entire `filter_button` block.
  #     buttons:
  #       - name: All
  #         tag: '*'
  #       - name: Deep Learning
  #         tag: Deep Learning
  #       - name: Other
  #         tag: Demo
  #   design:
  #     # Choose how many columns the section has. Valid values: '1' or '2'.
  #     columns: '1'
  #     view: showcase
  #     # For Showcase view, flip alternate rows?
  #     flip_alt_rows: false
  # - block: markdown
  #   content:
  #     title: Gallery
  #     subtitle: ''
  #     text: |-
  #       {{< gallery album="demo" >}}
  #   design:
  #     columns: '1'
  # - block: collection
  #   id: featured
  #   content:
  #     title: Featured Publications
  #     filters:
  #       folders:
  #         - publication
  #       featured_only: true
  #   design:
  #     columns: '2'
  #     view: card
  - block: collection
    id: papers
    content:
      title: Working Papers
      # text: |-
      #   {{% callout note %}}
      #   Quickly discover relevant content by [filtering publications](./publication/).
      #   {{% /callout %}}
      filters:
        folders:
          - publication
        exclude_featured: true
    design:
      columns: '2'
      view: citation
  - block: collection
    id: courses
    content:
      title: Teaching    
      filters:
        folders:
          - teaching        
    design:
      columns: '2'
      view: card  
  # - block: tag_cloud
  #   content:
  #     title: Popular Topics
  #   design:
  #     columns: '2'
  - block: contact
    id: contact
    content:
      title: Contact
      subtitle:
      # text: |-
      #   Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam mi diam, venenatis ut magna et, vehicula efficitur enim.
      # Contact (add or remove contact options as necessary)
#       email: "[Email](mailto:paulovictordafonseca@gmail.com)"
      # phone: 888 888 88 88
      # appointment_url: 'https://calendly.com'
      address:
        # street: 450 Serra Mall
        city: Florianópolis
        region: SC
        # postcode: '94305'
        country: Brazil
        country_code: BR
      # directions: Enter Building 1 and take the stairs to Office 200 on Floor 2
      # office_hours:
      #  - 'Monday 10:00 to 13:00'
      #  - 'Wednesday 09:00 to 10:00'
      contact_links:
        - icon: envelope
          icon_pack: fas
          name: E-mail
          link: 'mailto:paulovictordafonseca@gmail.com'
        - icon: twitter
          icon_pack: fab
          name: Twitter
          link: 'https://twitter.com/pvdafonseca'
        - icon: github
          icon_pack: fab
          name: GitHub Profile
          link: https://github.com/pvfonseca
        - icon: linkedin
          icon_pack: fab
          name: LinkedIn
          link: https://www.linkedin.com/in/paulo-victor-da-fonseca/
        - icon: skype
          icon_pack: fab
          name: Skype
          link: 'skype:paulo.victor.da.fonseca?call' 
        
      # Automatically link email and phone or display as text?
      # autolink: true
      # Email form provider
      # form:
      #   provider: netlify
      #   formspree:
      #     id:
      #   netlify:
      #     # Enable CAPTCHA challenge to reduce spam?
      #     captcha: false
    design:
      columns: '2'
---
