# Generated by Django 4.1.7 on 2023-03-21 06:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0016_rename_aspid_addvideoreview_critid'),
    ]

    operations = [
        migrations.AddField(
            model_name='addvideoreview',
            name='replay',
            field=models.FileField(null=True, upload_to=''),
        ),
    ]