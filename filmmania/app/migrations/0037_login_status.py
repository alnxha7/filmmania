# Generated by Django 4.1.3 on 2023-04-15 05:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0036_alter_useraddvideoreview_comment'),
    ]

    operations = [
        migrations.AddField(
            model_name='login',
            name='status',
            field=models.CharField(default='pending', max_length=100, null=True),
        ),
    ]