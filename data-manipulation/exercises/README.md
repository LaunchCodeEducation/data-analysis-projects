# DataManipulation

Context for each Dataset.

### Titanic Dataset:

**survival**: Survival where 0 = No, 1 = Yes

**pclass**: Ticket class where 1 = 1st, 2 = 2nd, 3 = 3rd

**sex**: Sex 

**Age**: Age in years

**sibsp**: # of siblings / spouses aboard the Titanic

**parch**: # of parents / children aboard the Titanic

**ticket**: Ticket number

**fare**: Passenger fare prices (pounds) in 1912

**cabin**: Cabin number

**embarked**: Port of Embarkation where C = Cherbourg, Q = Queenstown, S = Southampton

**class**: Ticket class represented as string value

**who**: Passengers classified based on age, where adults are male or female, and non-adults are child

**adult_male**: Bool if male is adult

**deck**: Deck Level

**embark_town**: Port of Embarkation represented as a string value

**alive**: Yes or No if survived

**alone**: Bool if traveled alone, that is no siblings, parents or children

Notes on the Titanic variables:
**pclass**: A proxy for socio-economic status (SES)
- 1st = Upper
- 2nd = Middle
- 3rd = Lower

**age**: Age is fractional if less than 1. If the age is estimated, is it in the form of xx.5

**sibsp**: The dataset defines family relations in this way...
- Sibling = brother, sister, stepbrother, stepsister
- Spouse = husband, wife (mistresses and fiancés were ignored)

**parch**: The dataset defines family relations in this way...
- Parent = mother, father
- Child = daughter, son, stepdaughter, stepson
- Some children travelled only with a nanny, therefore parch=0 for them.

Resources:  
- [The dataset for the titanic.csv](https://github.com/mwaskom/seaborn-data/blob/master/titanic.csv)
- [The context for the dataset](https://www.kaggle.com/c/titanic/data)      

### Merging Tables Data Sets:

#### Garden_supply represents a garden supply store.
**Flower**: is the name of the flower being sold
**Sold_As**: represents how the flowers are ready to be sold as
- Container - is a single 6 inch plastic potting container
- Bulb Pack - is a bag of bulbs 
- Root Pack - is a back of root cuttings
- Mixed Container - is a hanging basket that contains at least one of the flowers


#### Flowers and Shrubs datasets:
**Name** is the name of the plant
**Plant_Type** designates plant life cycle
- Perennial - a flower type that returns year after year
- Annual - a flower type that only lasts one season
- Evergreen - a shrub type that keeps its leaves year round, may or may not flower
- Flowering - a shrub type that is well known for its flowers.  Flowers are seasonal.
**Sun_Shade**:  The minimal sunlight requirements for each plant type
- Full_Sun - 6+ hours of direct sunlight
- Partial_Sun - 3-6 hours direct sunlight
- Partial_Shade - 3-6 hours direct sunlight
- Full_Shade - 3 hours or less of direct sunlight

Resources:
- This data set and context was created by Courtney Frey for this notebook set.