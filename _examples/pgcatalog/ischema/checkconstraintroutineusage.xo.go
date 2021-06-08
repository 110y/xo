package ischema

// Code generated by xo. DO NOT EDIT.

import (
	"github.com/xo/xo/_examples/pgcatalog/pgtypes"
)

// CheckConstraintRoutineUsage represents a row from 'information_schema.check_constraint_routine_usage'.
type CheckConstraintRoutineUsage struct {
	ConstraintCatalog pgtypes.SQLIdentifier `json:"constraint_catalog"` // constraint_catalog
	ConstraintSchema  pgtypes.SQLIdentifier `json:"constraint_schema"`  // constraint_schema
	ConstraintName    pgtypes.SQLIdentifier `json:"constraint_name"`    // constraint_name
	SpecificCatalog   pgtypes.SQLIdentifier `json:"specific_catalog"`   // specific_catalog
	SpecificSchema    pgtypes.SQLIdentifier `json:"specific_schema"`    // specific_schema
	SpecificName      pgtypes.SQLIdentifier `json:"specific_name"`      // specific_name

}
