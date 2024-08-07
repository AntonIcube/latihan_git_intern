ProductItemCard             = "//main[@id='maincontent']//form[1]"
ProductsListViewIcon        = "//strong[@title='Grid']/preceding-sibling::button[@title='List']"
ProductListViewContainer    = "//div[contains(@class,'mode-list')]"
ProductsGridViewIcon        = "//button[@aria-label='Products view mode - Grid']"
ProductGridViewContainer    = "//div[contains(@class,'mode-grid')]"
PLPProductName              = "//form[contains(@class,'product-item')]//div[contains(@class,'product-info')]//a[contains(@class,'product-item-link')]"
CompareButtonFirstProduct   = "//form[contains(@class,'product-item')][1]//div[contains(@class,'product-info')]//button[contains(@class,'tocompare')]"
CompareButtonPDP            = "//button[@id='add-to-compare']"
TextSuggestedProduct        = "//div[@class='product-info-main']//span[@data-ui-id='page-title-wrapper']"
ProductNameTitle            = "//a[@class='product-item-link']"
VarianConfigurableInPLP     = "//div[contains(@x-data,'initConfigurableSwatchOptions_1268')]"
SummaryProductSearchResult  = "//form"
ProductSearchResultIndex    = "//form[{}]//div[contains(@x-data,'initConfigurableSwatchOptions_1268')]"


#Button
AddToCartButton             = "//button[@id='product-addtocart-button']"

# Sorting
SortAsc  = "ASC"
SortDesc  = "DESC"
productItemPrice    =   "//section[@id='product-list']//form[{}]//div[contains(@class,'product-info')]//span[@class='price']"

# Product Card Detail
ProductItemBasedForm        = "//div[@class='products wrapper mode-grid products-grid']//form"
ProductItemCardName         = "//form[contains(@class,'product-item')]//a[@class='product-item-link' and contains(text(), '{}')]"
ProductItemAddToCartButton  = "//button[contains(@class,'btn-primary') and contains(@title,'Add to Cart')]"
SummarySwatchOption         = "//form[{ }]//div[@class='swatch-wrapper']/div"
ProductOption               = "//form[{}]//div[@class='swatch-wrapper']/div[{}]//div[contains(@x-id,'attribute-option')]"
AddToCartButtonInPLP        = "//button[contains(@class,'btn-primary') and contains(@aria-label, 'Add to Cart {}')]"
AddReviewButton = "//button[contains(@class,'rounded-md') and contains(@class,'border-neutral-600')]//span[contains(text(),'Write a review')]"

# Reviews
NameReviewer                = "//input[@id='nickname_field']"
RatingReviewer              = "//input[@id='Rating_{}']"
ReviewReviewer              = "//input[@id='summary_field']"
BodyReviewer                = "//textarea[@id='review_field']"
ButtonSubmitReview          = "//form[@id='review_form']/div[2]/button[2]/span"
SuccessSubmitReview         = "//p[contains(@class, 'text-green')]"

#Allert
SuccessAddToCartAllert = "//div[@ui-id='message-success']"
SortButton = "//select[@aria-label='Sort By']"
SortOptionPrice = "//select[@aria-label='Sort By']//option[@value='price']"