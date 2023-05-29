# odoo developer notes

Version : 15.0  
Addons : many  

## model inherit

    ```python
    _inherit = "parent.name"
    # this will extent the parent
    ```

    ```python
    _name = "my.name"
    _inherit = "parent.name"
    # this will create a new model
    ```

be careful, the class name do not same a parent's class name  

    ```python
    # addons A's models/parent.py
    class Parent_Class(models.Model):
        _name = "aaa.aaa"
    
    # addons B's models/parent_extend.py
    class Parent_Class(models.Model): # <--- this will make problem
        # the class name should not same a parent's class name
        _inherit = "aaa.aaa
    ```

## Security

Under `security` folder, there may has `groups.xml` and `ir.model.access.csv`. The group_id:id should be defined in `groups.xml` or other side.  
About `perm_write`, the `store=True` are also a write operation, even it was computed.  
