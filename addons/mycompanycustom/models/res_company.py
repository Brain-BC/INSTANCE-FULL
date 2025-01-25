# -*- coding: utf-8 -*-
from odoo import models, fields

class ResCompany(models.Model):
    _inherit = 'res.company'

    bg_image = fields.Binary(string="Image Login",help="Imagen de inicio de sessión")

