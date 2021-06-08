package ischema

// Code generated by xo. DO NOT EDIT.

import (
	"context"

	"github.com/xo/xo/_examples/pgcatalog/pgtypes"
)

// PgCharMaxLength calls the stored procedure 'information_schema._pg_char_max_length(oid, integer) integer' on db.
func PgCharMaxLength(ctx context.Context, db DB, v0 pgtypes.Oid, v1 int) (int, error) {
	// call information_schema._pg_char_max_length
	const sqlstr = `SELECT information_schema._pg_char_max_length($1, $2)`
	// run
	var ret int
	logf(sqlstr, v0, v1)
	if err := db.QueryRowContext(ctx, sqlstr, v0, v1).Scan(&ret); err != nil {
		return 0, logerror(err)
	}
	return ret, nil
}
