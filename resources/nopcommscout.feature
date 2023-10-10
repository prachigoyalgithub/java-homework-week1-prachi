Feature: Bookcategory

  Background: User should be able to see homepage
    Given  User enter URL" https://demo.nopcommerce.com/" in browser
    And    User is on  home page


  Scenario Outline: User should be able to see top menu tabs on homepage with categories

    When User is on home page
    Then User should be able to see top menu tabs with "<Categories>"

    Examples:

      |  Categories             |
      |  Computer               |
      |  Electronic             |
      |  Apparel                |
      |  Digital downloads      |
      |  Books                  |
      |  Jewellery              |
      |  Gift card              |

  Scenario Outline: User should be able to see book page with filters

    When   User select book category from top menu tabs on home page
    Then   User should be navigated  to book category
    And    User should be able to see "<Filters>"

    Examples:

      | Filters       |
      | Short by      |
      | Display       |
      | The  Grid     |
      | List Tab      |

  Scenario Outline: User should be able to see list of terms of each filter
    Given  User is on book page
    When  User click on  "<Filter>"
    Then  User should be able to see "<List>" in dropdown menu
    Examples:
      | Filter               |  List                                                                            |
      | sort by              | Name: Ato z,name : Z to A, Price :Low to High, Price : High to Low,Created on    |
      | Display              |  3 , 6 ,9                                                                        |


  Scenario Outline: User should be able to choose any filter option with specific result
    Given  User is on book page
    When   User click on "<Filter>"
    And    User click on any "<Option>"
    Then   User should be able to choose any filter option from the list
    And    User should be able to see  "<Result>"

    Examples:

      |Filter             | Option                     | Result                                                             |
      |Sort by            | Name:A to Z                | sorted product with the product name in alphabetical order A to Z  |
      |Sort by            | Name:Z to A                | sorted product with the product name in alphabetical order Z to A  |
      |Sort by            | price:low to high          | sorted product with the price in descending order                  |
      |Sort by            | price:High to low          | sorted product  with the price in ascending order                  |
      |Sort by            | Created on                 | Recently added  product should be show first                       |                 |
      |Display            | 3                          | 3 prodcuts in a page                                               |
      |Display            | 6                          | 6 products in a page                                               |
      |Display            | 9                          | 9 products in a page                                               |

  Scenario Outline:  User should be able to see  prodcut display format according display format type as per given picture in srs document

    Given  User is on book page
    When   User click on "<Display format icon>"
    Then   User should be able to see  prodcut display format according display format type as per given picture in SRS document

    Examples:
      | Display format icon  |
      | Grid                 |
      | List                 |



