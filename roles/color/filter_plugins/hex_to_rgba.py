from ansible.errors import AnsibleError
from ansible.module_utils.six import string_types
from ansible.plugins.filter.core import to_text


class FilterModule(object):
   def filters(self):
       return {
           'hex_to_rgba': self.hex_to_rgba
       }

   def hex_to_rgba(self, hex_color):
       if not isinstance(hex_color, string_types):
           raise AnsibleError('hex_to_rgba filter requires a string as input')

       if len(hex_color) == 7:
           hex_color += 'FF'
       elif len(hex_color) != 9:
           raise AnsibleError('hex_to_rgba filter requires a 6 or 8 digit hex color code')

       try:
           rgb_color = tuple(int(hex_color[i:i+2], 16) for i in (1, 3, 5))
           alpha = float(int(hex_color[7:9], 16) / 255.0)
           rgba_color = (*rgb_color, alpha)
           return 'rgba' + to_text(rgba_color) + ''
       except Exception as e:
           raise AnsibleError('hex_to_rgba filter encountered an error: %s' % str(e))
