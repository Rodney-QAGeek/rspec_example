# rspec_example

Steps to Reproduce:

1. `bundle`
2. `rspec test_spec.rb`

```
rodney:rspec_example qageek$ rspec test_spec.rb 
##################################################################
############ This is the bug in example_finished #################
notification.example.execution_result.finished_at.nil? returns true
notification.example.execution_result.status.nil? returns true
##################################################################
F

Failures:

  1) group a bunch
     Got 2 failures:

     1.1) Failure/Error: expect(true).to eq false

            expected: false
                 got: true

            (compared using ==)
          # ./test_spec.rb:5:in `block (2 levels) in <top (required)>'

     1.2) Failure/Error: expect(true).to eq false

            expected: false
                 got: true

            (compared using ==)
          # ./test_spec.rb:6:in `block (2 levels) in <top (required)>'

Finished in 0.01715 seconds (files took 0.09841 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./test_spec.rb:4 # group a bunch
```
