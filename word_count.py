import re
import sublime
import sublime_plugin

class WordCountCommand(sublime_plugin.TextCommand):

   def run(self, edit, args=None):
       content = self.view.substr(sublime.Region(0, self.view.size()))
       sublime.status_message('%d characters / %d words in text' % self.word_count(content))

   def word_count(self, text):
       return len(text), len(re.findall('(\w+)', text))
