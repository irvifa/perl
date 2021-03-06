
=begin comment

Kubernetes

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: v1.13.5

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package Kubernetes::Object::V1beta2DaemonSetSpec;

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

use Kubernetes::Object::V1LabelSelector;
use Kubernetes::Object::V1PodTemplateSpec;
use Kubernetes::Object::V1beta2DaemonSetUpdateStrategy;

use base ( "Class::Accessor", "Class::Data::Inheritable" );

#
#DaemonSetSpec is the specification of a daemon set.
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

Kubernetes

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: v1.13.5

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

# new object
sub new {
    my ( $class, %args ) = @_;

    my $self = bless {}, $class;

    foreach my $attribute ( keys %{ $class->attribute_map } ) {
        my $args_key = $class->attribute_map->{$attribute};
        $self->$attribute( $args{$args_key} );
    }

    return $self;
}

# return perl hash
sub to_hash {
    return decode_json( JSON->new->convert_blessed->encode(shift) );
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
        if ( $_type =~ /^array\[/i ) {    # array
            my $_subclass = substr( $_type, 6, -1 );
            my @_array    = ();
            foreach my $_element ( @{ $hash->{$_json_attribute} } ) {
                push @_array, $self->_deserialize( $_subclass, $_element );
            }
            $self->{$_key} = \@_array;
        }
        elsif ( exists $hash->{$_json_attribute} )
        {                                 #hash(model), primitive, datetime
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
        description => 'DaemonSetSpec is the specification of a daemon set.',
        class       => 'V1beta2DaemonSetSpec',
        required => [],    # TODO
    }
);

__PACKAGE__->method_documentation(
    {
        'min_ready_seconds' => {
            datatype  => 'int',
            base_name => 'minReadySeconds',
            description =>
'The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).',
            format    => '',
            read_only => '',
        },
        'revision_history_limit' => {
            datatype  => 'int',
            base_name => 'revisionHistoryLimit',
            description =>
'The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.',
            format    => '',
            read_only => '',
        },
        'selector' => {
            datatype    => 'V1LabelSelector',
            base_name   => 'selector',
            description => '',
            format      => '',
            read_only   => '',
        },
        'template' => {
            datatype    => 'V1PodTemplateSpec',
            base_name   => 'template',
            description => '',
            format      => '',
            read_only   => '',
        },
        'update_strategy' => {
            datatype    => 'V1beta2DaemonSetUpdateStrategy',
            base_name   => 'updateStrategy',
            description => '',
            format      => '',
            read_only   => '',
        },
    }
);

__PACKAGE__->openapi_types(
    {
        'min_ready_seconds'      => 'int',
        'revision_history_limit' => 'int',
        'selector'               => 'V1LabelSelector',
        'template'               => 'V1PodTemplateSpec',
        'update_strategy'        => 'V1beta2DaemonSetUpdateStrategy'
    }
);

__PACKAGE__->attribute_map(
    {
        'min_ready_seconds'      => 'minReadySeconds',
        'revision_history_limit' => 'revisionHistoryLimit',
        'selector'               => 'selector',
        'template'               => 'template',
        'update_strategy'        => 'updateStrategy'
    }
);

__PACKAGE__->mk_accessors( keys %{ __PACKAGE__->attribute_map } );

1;
