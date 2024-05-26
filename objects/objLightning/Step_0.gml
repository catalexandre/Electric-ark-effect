alpha -= 1 / fadeTime;
if(alpha <= 0)
{
    instance_destroy();
}