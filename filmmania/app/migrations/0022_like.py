# Generated by Django 4.1.7 on 2023-03-22 15:39

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0021_alter_messageuser_aspid'),
    ]

    operations = [
        migrations.CreateModel(
            name='Like',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('like', models.CharField(max_length=100, null=True)),
                ('dislike', models.CharField(max_length=100, null=True)),
                ('movieid', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app.aspirantsregister')),
                ('userid', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app.userregister')),
            ],
        ),
    ]
