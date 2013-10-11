# Grid Engine scheduler configuration 
default[:gengine][:scheduler] = Hash.new
# defaults for the Grid Engine scheduler configuration
default[:gengine][:defaults][:scheduler] = <<-EOF
algorithm                         default
schedule_interval                 0:0:1
maxujobs                          0
queue_sort_method                 seqno
job_load_adjustments              np_load_avg=0.50
load_adjustment_decay_time        0:7:30
load_formula                      np_load_avg
schedd_job_info                   true
flush_submit_sec                  0
flush_finish_sec                  0
params                            none
reprioritize_interval             0:0:0
halftime                          0
usage_weight_list                 cpu=1.000000,mem=0.000000,io=0.000000
compensation_factor               0
weight_user                       0.250000
weight_project                    0.250000
weight_department                 0.250000
weight_job                        0.250000
weight_tickets_functional         0
weight_tickets_share              17600
share_override_tickets            TRUE
share_functional_shares           TRUE
max_functional_jobs_to_schedule   200
report_pjob_tickets               TRUE
max_pending_tasks_per_job         50
halflife_decay_list               none
policy_hierarchy                  S
weight_ticket                     1.000000
weight_waiting_time               0.000000
weight_deadline                   0.000000
weight_urgency                    0.000000
weight_priority                   0.000000
max_reservation                   0
default_duration                  INFINITY
EOF
