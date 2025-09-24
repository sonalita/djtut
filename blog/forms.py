from django import forms

from .models import Post


class PostForm(forms.ModelForm):
    class Meta:
        """Metadata options for the PostForm."""

        model = Post
        fields = ('title', 'text')
