# Generated by Django 4.1.3 on 2023-04-17 04:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0040_rename_comment_addvideoreview_pdf'),
    ]

    operations = [
        migrations.RenameField(
            model_name='addmoviereview',
            old_name='comment',
            new_name='pdf',
        ),
        migrations.AlterField(
            model_name='addvideoreview',
            name='pdf',
            field=models.FileField(null=True, upload_to=''),
        ),
        migrations.AlterField(
            model_name='useraddmoviereview',
            name='comment',
            field=models.FileField(null=True, upload_to=''),
        ),
    ]