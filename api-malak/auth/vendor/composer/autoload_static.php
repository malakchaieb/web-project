<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit6ba9b0e1e0d75445bdd7da81a7bfe794
{
    public static $prefixLengthsPsr4 = array (
        'F' => 
        array (
            'Firebase\\JWT\\' => 13,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Firebase\\JWT\\' => 
        array (
            0 => __DIR__ . '/..' . '/firebase/php-jwt/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit6ba9b0e1e0d75445bdd7da81a7bfe794::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit6ba9b0e1e0d75445bdd7da81a7bfe794::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit6ba9b0e1e0d75445bdd7da81a7bfe794::$classMap;

        }, null, ClassLoader::class);
    }
}