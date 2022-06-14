<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit31fd80b2bd3010f096b7c06b25af32b1
{
    public static $prefixLengthsPsr4 = array (
        'A' => 
        array (
            'App\\' => 4,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'App\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit31fd80b2bd3010f096b7c06b25af32b1::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit31fd80b2bd3010f096b7c06b25af32b1::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit31fd80b2bd3010f096b7c06b25af32b1::$classMap;

        }, null, ClassLoader::class);
    }
}
