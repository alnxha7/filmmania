# Generated by Django 4.1.3 on 2023-04-16 08:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0037_login_status'),
    ]

    operations = [
        migrations.AlterField(
            model_name='like',
            name='type',
            field=models.CharField(default='0', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='videolike',
            name='type',
            field=models.CharField(default='0', max_length=100, null=True),
        ),
    ]
