//
//  SampleRecipes.swift
//  RecipeApp
//
//  Created by shuni on 7/10/26.
//

import Foundation

let sampleRecipes: [Recipe] = [

    Recipe(
        name: "Shakshuka",
        category: "BREAKFAST",
        cookTime: 25,
        description: "Eggs cooked in a rich tomato and pepper sauce.",
        imageName: "shakshuka",
        servings: 2,
        ingredients: [
            Ingredient(amount: 4, unit: "", name: "eggs"),
            Ingredient(amount: 400, unit: "g", name: "tomatoes"),
            Ingredient(amount: 1, unit: "", name: "onion"),
            Ingredient(amount: 1, unit: "", name: "bell pepper"),
            Ingredient(amount: 2, unit: "tbsp", name: "olive oil")
        ],
        methodSteps: [
            MethodStep(
                stepNumber: 1,
                instruction: "Cook the onion and bell pepper until soft.",
            ),
            MethodStep(
                stepNumber: 2,
                instruction: "Add tomatoes and simmer the sauce.",
            ),
            MethodStep(
                stepNumber: 3,
                instruction: "Crack the eggs into the sauce and cook.",
            )
        ]
    ),

    Recipe(
        name: "Salmon Eggs Benedict",
        category: "BREAKFAST",
        cookTime: 20,
        description: "Poached eggs served with salmon and toasted bread.",
        imageName: "salmon_eggs_benedict",
        servings: 2,
        ingredients: [
            Ingredient(amount: 2, unit: "", name: "eggs"),
            Ingredient(amount: 100, unit: "g", name: "smoked salmon"),
            Ingredient(amount: 2, unit: "", name: "bread slices"),
            Ingredient(amount: 2, unit: "tbsp", name: "hollandaise sauce")
        ],
        methodSteps: [
            MethodStep(
                stepNumber: 1,
                instruction: "Toast the bread until golden.",
            ),
            MethodStep(
                stepNumber: 2,
                instruction: "Poach the eggs in simmering water.",
            ),
            MethodStep(
                stepNumber: 3,
                instruction: "Assemble the toast, salmon, eggs and sauce.",
            )
        ]
    ),

    Recipe(
        name: "Fluffy Pancakes",
        category: "BREAKFAST",
        cookTime: 20,
        description: "Soft and fluffy pancakes served with fresh berries.",
        imageName: "pancakes",
        servings: 2,
        ingredients: [
            Ingredient(amount: 200, unit: "g", name: "flour"),
            Ingredient(amount: 250, unit: "ml", name: "milk"),
            Ingredient(amount: 1, unit: "", name: "egg"),
            Ingredient(amount: 2, unit: "tbsp", name: "sugar"),
            Ingredient(amount: 1, unit: "tsp", name: "baking powder")
        ],
        methodSteps: [
            MethodStep(
                stepNumber: 1,
                instruction: "Mix the dry ingredients in a bowl.",
            ),
            MethodStep(
                stepNumber: 2,
                instruction: "Add milk and egg and mix gently.",
            ),
            MethodStep(
                stepNumber: 3,
                instruction: "Cook pancakes on a hot pan.",
            )
        ]
    ),

    Recipe(
        name: "Salmon Avocado Salad",
        category: "LUNCH",
        cookTime: 15,
        description: "Crisp-skinned salmon over rocket and avocado with a sharp lemon dressing.",
        imageName: "salmon_avocado_salad",
        servings: 2,
        ingredients: [
            Ingredient(amount: 2, unit: "", name: "salmon fillets"),
            Ingredient(amount: 1, unit: "", name: "avocado"),
            Ingredient(amount: 70, unit: "g", name: "rocket"),
            Ingredient(amount: 1, unit: "", name: "lemon"),
            Ingredient(amount: 2, unit: "tbsp", name: "olive oil")
        ],
        methodSteps: [
            MethodStep(
                stepNumber: 1,
                instruction: "Season the salmon and start it skin-side down in a hot pan.",
            ),
            MethodStep(
                stepNumber: 2,
                instruction: "Flip and cook for one more minute.",
            ),
            MethodStep(
                stepNumber: 3,
                instruction: "Combine rocket and avocado with lemon dressing.",
            )
        ]
    ),

    Recipe(
        name: "Chickpea Fajitas",
        category: "DINNER",
        cookTime: 25,
        description: "Spicy chickpea fajitas with fresh vegetables.",
        imageName: "chickpea_fajitas",
        servings: 2,
        ingredients: [
            Ingredient(amount: 250, unit: "g", name: "chickpeas"),
            Ingredient(amount: 1, unit: "", name: "bell pepper"),
            Ingredient(amount: 1, unit: "", name: "onion"),
            Ingredient(amount: 4, unit: "", name: "tortillas"),
            Ingredient(amount: 1, unit: "tbsp", name: "fajita seasoning")
        ],
        methodSteps: [
            MethodStep(
                stepNumber: 1,
                instruction: "Cook onion and pepper until soft.",
            ),
            MethodStep(
                stepNumber: 2,
                instruction: "Add chickpeas and fajita seasoning.",
            ),
            MethodStep(
                stepNumber: 3,
                instruction: "Serve inside warm tortillas.",
            )
        ]
    ),

    Recipe(
        name: "Spicy Arrabiata Penne",
        category: "DINNER",
        cookTime: 25,
        description: "Penne pasta tossed with a spicy tomato sauce.",
        imageName: "arrabiata_penne",
        servings: 2,
        ingredients: [
            Ingredient(amount: 200, unit: "g", name: "penne pasta"),
            Ingredient(amount: 300, unit: "g", name: "tomatoes"),
            Ingredient(amount: 2, unit: "cloves", name: "garlic"),
            Ingredient(amount: 1, unit: "tsp", name: "chili flakes"),
            Ingredient(amount: 2, unit: "tbsp", name: "olive oil")
        ],
        methodSteps: [
            MethodStep(
                stepNumber: 1,
                instruction: "Boil the pasta until al dente.",
            ),
            MethodStep(
                stepNumber: 2,
                instruction: "Prepare the spicy tomato sauce.",
            ),
            MethodStep(
                stepNumber: 3,
                instruction: "Mix the pasta with the sauce and serve.",
            )
        ]
    ),
    
    Recipe(
        name: "Spinach & Ricotta Cannelloni",
        category: "DINNER",
        cookTime: 50,
        description: "Pasta filled with creamy ricotta and spinach, baked in a rich tomato sauce.",
        imageName: "spinach_ricotta_cannelloni",
        servings: 2,
        ingredients: [
            Ingredient(amount: 200, unit: "g", name: "cannelloni tubes"),
            Ingredient(amount: 200, unit: "g", name: "ricotta cheese"),
            Ingredient(amount: 150, unit: "g", name: "spinach"),
            Ingredient(amount: 300, unit: "g", name: "tomato sauce"),
            Ingredient(amount: 50, unit: "g", name: "mozzarella cheese")
        ],
        methodSteps: [
            MethodStep(
                stepNumber: 1,
                instruction: "Cook the spinach, then mix it with ricotta cheese.",
            ),
            MethodStep(
                stepNumber: 2,
                instruction: "Fill the cannelloni tubes with the spinach and ricotta mixture.",
            ),
            MethodStep(
                stepNumber: 3,
                instruction: "Cover with tomato sauce and mozzarella, then bake until golden.",
            )
        ]
    ),

    Recipe(
        name: "Honey Teriyaki Salmon",
        category: "DINNER",
        cookTime: 30,
        description: "Tender salmon glazed with a sweet and savory honey teriyaki sauce.",
        imageName: "honey_teriyaki_salmon",
        servings: 2,
        ingredients: [
            Ingredient(amount: 2, unit: "", name: "salmon fillets"),
            Ingredient(amount: 2, unit: "tbsp", name: "soy sauce"),
            Ingredient(amount: 1, unit: "tbsp", name: "honey"),
            Ingredient(amount: 1, unit: "tsp", name: "garlic"),
            Ingredient(amount: 1, unit: "tsp", name: "sesame seeds")
        ],
        methodSteps: [
            MethodStep(
                stepNumber: 1,
                instruction: "Mix the soy sauce, honey, and garlic to prepare the teriyaki glaze.",
            ),
            MethodStep(
                stepNumber: 2,
                instruction: "Cook the salmon in a pan until nearly cooked through.",
            ),
            MethodStep(
                stepNumber: 3,
                instruction: "Add the glaze and cook until the salmon is coated. Sprinkle with sesame seeds.",
            )
        ]
    )
]
