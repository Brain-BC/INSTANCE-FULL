# -*- coding: utf-8 -*-

from odoo import fields, models


class ResConfigSettings(models.TransientModel):
    """ Configure the number of backups for restore """
    _inherit = 'res.config.settings'

    backup_count = fields.Integer(string='Backup Count', help='Number of backups to list for restore',config_parameter='odoo_database_restore_manager.backup_count')