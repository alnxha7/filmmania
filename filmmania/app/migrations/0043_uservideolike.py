# Generated by Django 4.1.3 on 2023-04-17 06:17

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0042_usrlike'),
    ]

    operations = [
        migrations.CreateModel(
            name='Uservideolike',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('type', models.CharField(default='0', max_length=100, null=True)),
                ('userid', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app.userregister')),
                ('vid', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app.addvideos')),
            ],
        ),
    ]