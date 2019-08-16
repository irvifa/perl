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
package Kubernetes::Object::V1DaemonSetStatus;

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

use Kubernetes::Object::V1DaemonSetCondition;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#DaemonSetStatus represents the current status of a daemon set.
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



__PACKAGE__->class_documentation({description => 'DaemonSetStatus represents the current status of a daemon set.',
                                  class => 'V1DaemonSetStatus',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'collision_count' => {
        datatype => 'int',
        base_name => 'collisionCount',
        description => 'Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.',
        format => '',
        read_only => '',
            },
    'conditions' => {
        datatype => 'ARRAY[V1DaemonSetCondition]',
        base_name => 'conditions',
        description => 'Represents the latest available observations of a DaemonSet&#39;s current state.',
        format => '',
        read_only => '',
            },
    'current_number_scheduled' => {
        datatype => 'int',
        base_name => 'currentNumberScheduled',
        description => 'The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/',
        format => '',
        read_only => '',
            },
    'desired_number_scheduled' => {
        datatype => 'int',
        base_name => 'desiredNumberScheduled',
        description => 'The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/',
        format => '',
        read_only => '',
            },
    'number_available' => {
        datatype => 'int',
        base_name => 'numberAvailable',
        description => 'The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)',
        format => '',
        read_only => '',
            },
    'number_misscheduled' => {
        datatype => 'int',
        base_name => 'numberMisscheduled',
        description => 'The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/',
        format => '',
        read_only => '',
            },
    'number_ready' => {
        datatype => 'int',
        base_name => 'numberReady',
        description => 'The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready.',
        format => '',
        read_only => '',
            },
    'number_unavailable' => {
        datatype => 'int',
        base_name => 'numberUnavailable',
        description => 'The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)',
        format => '',
        read_only => '',
            },
    'observed_generation' => {
        datatype => 'int',
        base_name => 'observedGeneration',
        description => 'The most recent generation observed by the daemon set controller.',
        format => '',
        read_only => '',
            },
    'updated_number_scheduled' => {
        datatype => 'int',
        base_name => 'updatedNumberScheduled',
        description => 'The total number of nodes that are running updated daemon pod',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'collision_count' => 'int',
    'conditions' => 'ARRAY[V1DaemonSetCondition]',
    'current_number_scheduled' => 'int',
    'desired_number_scheduled' => 'int',
    'number_available' => 'int',
    'number_misscheduled' => 'int',
    'number_ready' => 'int',
    'number_unavailable' => 'int',
    'observed_generation' => 'int',
    'updated_number_scheduled' => 'int'
} );

__PACKAGE__->attribute_map( {
    'collision_count' => 'collisionCount',
    'conditions' => 'conditions',
    'current_number_scheduled' => 'currentNumberScheduled',
    'desired_number_scheduled' => 'desiredNumberScheduled',
    'number_available' => 'numberAvailable',
    'number_misscheduled' => 'numberMisscheduled',
    'number_ready' => 'numberReady',
    'number_unavailable' => 'numberUnavailable',
    'observed_generation' => 'observedGeneration',
    'updated_number_scheduled' => 'updatedNumberScheduled'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
