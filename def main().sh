def main():
    customer_name = input("Enter customer's name: ")
    current_date = input("Enter today's date: ")
    shopping_cart = ShoppingCart(customer_name, current_date)
    print(f"\nCustomer Name: {shopping_cart.customer_name}")
    print(f"Today's Date: {shopping_cart.current_date}\n")

    print_menu(shopping_cart)

if __name__ == "__main__":
    main()
