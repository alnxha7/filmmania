# Generated by Django 4.1.7 on 2023-03-22 14:25

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0020_alter_addmoviereview_comment_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='messageuser',
            name='aspid',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app.aspirantsregister'),
        ),
    ]
