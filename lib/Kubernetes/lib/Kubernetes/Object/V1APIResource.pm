=begin comment

Kubernetes

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1.14.6

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package Kubernetes::Object::V1APIResource;

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


use base ("Class::Accessor", "Class::Data::Inheritable");

#
#APIResource specifies the name of a resource and whether it is namespaced.
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

Kubernetes

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1.14.6

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new plain object
sub new { 
    my ($class, %args) = @_; 

    my $self = bless {}, $class;

    $self->init(%args);
    
    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }

    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \%_hash;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
            $log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "Kubernetes::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => 'APIResource specifies the name of a resource and whether it is namespaced.',
                                  class => 'V1APIResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'categories' => {
        datatype => 'ARRAY[string]',
        base_name => 'categories',
        description => 'categories is a list of the grouped resources this resource belongs to (e.g. &#39;all&#39;)',
        format => '',
        read_only => '',
            },
    'group' => {
        datatype => 'string',
        base_name => 'group',
        description => 'group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale\&quot;.',
        format => '',
        read_only => '',
            },
    'kind' => {
        datatype => 'string',
        base_name => 'kind',
        description => 'kind is the kind for the resource (e.g. &#39;Foo&#39; is the kind for a resource &#39;foo&#39;)',
        format => '',
        read_only => '',
            },
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => 'name is the plural name of the resource.',
        format => '',
        read_only => '',
            },
    'namespaced' => {
        datatype => 'boolean',
        base_name => 'namespaced',
        description => 'namespaced indicates if a resource is namespaced or not.',
        format => '',
        read_only => '',
            },
    'short_names' => {
        datatype => 'ARRAY[string]',
        base_name => 'shortNames',
        description => 'shortNames is a list of suggested short names of the resource.',
        format => '',
        read_only => '',
            },
    'singular_name' => {
        datatype => 'string',
        base_name => 'singularName',
        description => 'singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface.',
        format => '',
        read_only => '',
            },
    'storage_version_hash' => {
        datatype => 'string',
        base_name => 'storageVersionHash',
        description => 'The hash value of the storage version, the version this resource is converted to when written to the data store. Value must be treated as opaque by clients. Only equality comparison on the value is valid. This is an alpha feature and may change or be removed in the future. The field is populated by the apiserver only if the StorageVersionHash feature gate is enabled. This field will remain optional even if it graduates.',
        format => '',
        read_only => '',
            },
    'verbs' => {
        datatype => 'ARRAY[string]',
        base_name => 'verbs',
        description => 'verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)',
        format => '',
        read_only => '',
            },
    'version' => {
        datatype => 'string',
        base_name => 'version',
        description => 'version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource&#39;s group)\&quot;.',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'categories' => 'ARRAY[string]',
    'group' => 'string',
    'kind' => 'string',
    'name' => 'string',
    'namespaced' => 'boolean',
    'short_names' => 'ARRAY[string]',
    'singular_name' => 'string',
    'storage_version_hash' => 'string',
    'verbs' => 'ARRAY[string]',
    'version' => 'string'
} );

__PACKAGE__->attribute_map( {
    'categories' => 'categories',
    'group' => 'group',
    'kind' => 'kind',
    'name' => 'name',
    'namespaced' => 'namespaced',
    'short_names' => 'shortNames',
    'singular_name' => 'singularName',
    'storage_version_hash' => 'storageVersionHash',
    'verbs' => 'verbs',
    'version' => 'version'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
