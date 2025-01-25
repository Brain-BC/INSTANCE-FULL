# -*- coding: utf-8 -*-
{
    'name': "Personalizar Instancia",
    'summary': "Short (1 phrase/line) summary of the module's purpose",
    'description': """Long description of module's purpose """,
    'author': "Jason N",
    'website': "",
    'category': 'Uncategorized',
    'version': '0.1',
    'depends': ['base','portal','base_setup'],
    'demo':[
        'demo/demo.xml',
    ],
    
    'data': [
        # 'security/ir.model.access.csv',
        'views/web_login.xml',
        'views/res_company.xml',
        'views/res_config.xml'
    ],
    
    'assets':{
        'web.assets_backend':[
            'mycompanycustom/static/src/js/window_title.js',
        ],
    },
   'application': True,
   'sequence': 1
}

