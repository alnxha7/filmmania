# Generated by Django 4.1.3 on 2023-04-15 05:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0035_alter_addvideos_aspid'),
    ]

    operations = [
        migrations.AlterField(
            model_name='useraddvideoreview',
            name='comment',
            field=models.CharField(max_length=50, null=True),
        ),
    ]
