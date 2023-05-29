# odoo developer notes

Version : 15.0  
Addons : many  

## Documents

* reference to the official site https://www.odoo.com/documentation/16.0/developer/reference/backend/orm.html
* Documents was separated into `ORM API`, `Data Files`, `Action`, `Views`, `Module Manifests`, ...
* `ORM API` is about models/xxx.py
* xml related is in `Data Files`, `Action`, `Views`, ...

## Model inherit

    ```python,odoo
    _inherit = "parent.name"
    # this will extent the parent (only use _inherit)
    ```

    ```python,odoo
    _name = "my.name"
    _inherit = "parent.name"
    # this will create a new model (use both _name and _inherit)
    ```

be careful, the class name do not same as parent's class name  

    ```python,odoo
    # addons A's models/parent.py
    class Parent_Class(models.Model):
        _name = "aaa.aaa"
    
    # addons B's models/parent_extend.py
    class Parent_Class(models.Model): # <--- this will make problem
        # the class name should not same as parent's class name
        _inherit = "aaa.aaa
    ```

## Security

* Under `security` folder, there may has `groups.xml` and `ir.model.access.csv`. The group_id:id should be defined in `groups.xml` or other side.  
* About `perm_write`, the `store=True` are also a write operation, even it was computed.  
