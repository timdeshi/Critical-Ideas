class ItemToPurchase:
    def __init__(self, name="none", price=0, quantity=0, description="none"):
        self.name = name
        self.price = price
        self.quantity = quantity
        self.description = description

class ShoppingCart:
    ## Parameterized constructor ##
    def __init__(self, customer_name="none", current_date="January 1, 2020"):
        self.customer_name = customer_name
        self.current_date = current_date
        self.cart_items = []

    ## Method to add an item to the cart ##
    def add_item(self, item):
        self.cart_items.append(item)

    ## Method to remove an item from the cart ##
    def remove_item(self, item_name):
        item_found = False
        for item in self.cart_items:
            if item.name == item_name:
                self.cart_items.remove(item)
                item_found = True
                break
        if not item_found:
            print("Item not found in cart. Nothing removed.")

    ## Method to modify an item in the cart ##
    def modify_item(self, modified_item):
        item_found = False
        for item in self.cart_items:
            if item.name == modified_item.name:
                if modified_item.description != "none":
                    item.description = modified_item.description
                if modified_item.price != 0:
                    item.price = modified_item.price
                if modified_item.quantity != 0:
                    item.quantity = modified_item.quantity
                item_found = True
                break
        if not item_found:
            print("Item not found in cart. Nothing modified.")

    ## Method to get the total number of items in the cart ##
    def get_num_items_in_cart(self):
        total_quantity = sum(item.quantity for item in self.cart_items)
        return total_quantity

    ## Method to get the total cost of the cart ##
    def get_cost_of_cart(self):
        total_cost = sum(item.price * item.quantity for item in self.cart_items)
        return total_cost

     ## Method to print the total ##
    def print_total(self):
        if len(self.cart_items) == 0:
            print("SHOPPING CART IS EMPTY")
        else:
            print(f"{self.customer_name}'s Shopping Cart - {self.current_date}")
            print(f"Number of Items: {self.get_num_items_in_cart()}")
            for item in self.cart_items:
                print(f"{item.name} {item.quantity} @ ${item.price} = ${item.price * item.quantity}")
            print(f"Total: ${self.get_cost_of_cart()}")

    ## Method to print item descriptions ##
    def print_descriptions(self):
        print(f"{self.customer_name}'s Shopping Cart - {self.current_date}")
        print("Item Descriptions")
        for item in self.cart_items:
            print(f"{item.name}: {item.description}")

