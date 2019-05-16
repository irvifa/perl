
=begin comment

Kubernetes

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1.13.7

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package Kubernetes::Object::V1RBDVolumeSource;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use Kubernetes::Object::V1LocalObjectReference;

use base ( "Class::Accessor", "Class::Data::Inheritable" );

#
#Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

Kubernetes

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1.13.7

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
__PACKAGE__->mk_classdata( 'attribute_map'        => {} );
__PACKAGE__->mk_classdata( 'openapi_types'        => {} );
__PACKAGE__->mk_classdata( 'method_documentation' => {} );
__PACKAGE__->mk_classdata( 'class_documentation'  => {} );

# new plain object
sub new {
    my ( $class, %args ) = @_;

    my $self = bless {}, $class;

    $self->init(%args);

    return $self;
}

# initialize the object
sub init {
    my ( $self, %args ) = @_;

    foreach my $attribute ( keys %{ $self->attribute_map } ) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{$args_key} );
    }
}

# return perl hash
sub to_hash {
    my $self  = shift;
    my $_hash = decode_json( JSON->new->convert_blessed->encode($self) );

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON {
    my $self  = shift;
    my $_data = {};
    foreach my $_key ( keys %{ $self->attribute_map } ) {
        if ( defined $self->{$_key} ) {
            $_data->{ $self->attribute_map->{$_key} } = $self->{$_key};
        }
    }

    return $_data;
}

# from Perl hashref
sub from_hash {
    my ( $self, $hash ) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ( $_key, $_type ) = each %{ $self->openapi_types } ) {
        my $_json_attribute = $self->attribute_map->{$_key};
        if ( $_type =~ /^array\[(.+)\]$/i ) {    # array
            my $_subclass = $1;
            my @_array    = ();
            foreach my $_element ( @{ $hash->{$_json_attribute} } ) {
                push @_array, $self->_deserialize( $_subclass, $_element );
            }
            $self->{$_key} = \@_array;
        }
        elsif ( $_type =~ /^hash\[string,(.+)\]$/i ) {    # hash
            my $_subclass = $1;
            my %_hash     = ();
            while ( my ( $_key, $_element ) =
                each %{ $hash->{$_json_attribute} } )
            {
                $_hash{$_key} = $self->_deserialize( $_subclass, $_element );
            }
            $self->{$_key} = \%_hash;
        }
        elsif ( exists $hash->{$_json_attribute} )
        {    #hash(model), primitive, datetime
            $self->{$_key} =
              $self->_deserialize( $_type, $hash->{$_json_attribute} );
        }
        else {
            $log->debugf( "Warning: %s (%s) does not exist in input hash\n",
                $_key, $_json_attribute );
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ( $self, $type, $data ) = @_;
    $log->debugf( "deserializing %s with %s", Dumper($data), $type );

    if ( $type eq 'DateTime' ) {
        return DateTime->from_epoch( epoch => str2time($data) );
    }
    elsif ( grep( /^$type$/, ( 'int', 'double', 'string', 'boolean' ) ) ) {
        return $data;
    }
    else {    # hash(model)
        my $_instance = eval "Kubernetes::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}

__PACKAGE__->class_documentation(
    {
        description =>
'Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.',
        class    => 'V1RBDVolumeSource',
        required => [],                    # TODO
    }
);

__PACKAGE__->method_documentation(
    {
        'fs_type' => {
            datatype  => 'string',
            base_name => 'fsType',
            description =>
'Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \&quot;ext4\&quot;, \&quot;xfs\&quot;, \&quot;ntfs\&quot;. Implicitly inferred to be \&quot;ext4\&quot; if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd',
            format    => '',
            read_only => '',
        },
        'image' => {
            datatype  => 'string',
            base_name => 'image',
            description =>
'The rados image name. More info: https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it',
            format    => '',
            read_only => '',
        },
        'keyring' => {
            datatype  => 'string',
            base_name => 'keyring',
            description =>
'Keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it',
            format    => '',
            read_only => '',
        },
        'monitors' => {
            datatype  => 'ARRAY[string]',
            base_name => 'monitors',
            description =>
'A collection of Ceph monitors. More info: https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it',
            format    => '',
            read_only => '',
        },
        'pool' => {
            datatype  => 'string',
            base_name => 'pool',
            description =>
'The rados pool name. Default is rbd. More info: https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it',
            format    => '',
            read_only => '',
        },
        'read_only' => {
            datatype  => 'boolean',
            base_name => 'readOnly',
            description =>
'ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it',
            format    => '',
            read_only => '',
        },
        'secret_ref' => {
            datatype    => 'V1LocalObjectReference',
            base_name   => 'secretRef',
            description => '',
            format      => '',
            read_only   => '',
        },
        'user' => {
            datatype  => 'string',
            base_name => 'user',
            description =>
'The rados user name. Default is admin. More info: https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it',
            format    => '',
            read_only => '',
        },
    }
);

__PACKAGE__->openapi_types(
    {
        'fs_type'    => 'string',
        'image'      => 'string',
        'keyring'    => 'string',
        'monitors'   => 'ARRAY[string]',
        'pool'       => 'string',
        'read_only'  => 'boolean',
        'secret_ref' => 'V1LocalObjectReference',
        'user'       => 'string'
    }
);

__PACKAGE__->attribute_map(
    {
        'fs_type'    => 'fsType',
        'image'      => 'image',
        'keyring'    => 'keyring',
        'monitors'   => 'monitors',
        'pool'       => 'pool',
        'read_only'  => 'readOnly',
        'secret_ref' => 'secretRef',
        'user'       => 'user'
    }
);

__PACKAGE__->mk_accessors( keys %{ __PACKAGE__->attribute_map } );

1;
