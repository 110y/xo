package ischema

// Code generated by xo. DO NOT EDIT.

import (
	"github.com/xo/xo/_examples/pgcatalog/pgtypes"
)

// UdtPrivilege represents a row from 'information_schema.udt_privileges'.
type UdtPrivilege struct {
	Grantor       pgtypes.SQLIdentifier `json:"grantor"`        // grantor
	Grantee       pgtypes.SQLIdentifier `json:"grantee"`        // grantee
	UdtCatalog    pgtypes.SQLIdentifier `json:"udt_catalog"`    // udt_catalog
	UdtSchema     pgtypes.SQLIdentifier `json:"udt_schema"`     // udt_schema
	UdtName       pgtypes.SQLIdentifier `json:"udt_name"`       // udt_name
	PrivilegeType pgtypes.CharacterData `json:"privilege_type"` // privilege_type
	IsGrantable   pgtypes.YesOrNo       `json:"is_grantable"`   // is_grantable

}
