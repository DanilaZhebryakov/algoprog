React = require('react')

import { Grid } from 'react-bootstrap'
import Table from '../components/Table'
import Sceleton from '../components/Sceleton'

import ConnectedComponent from '../lib/ConnectedComponent'

class TablePage extends React.Component
    constructor: (props) ->
        super(props)
        @id = props.match.params.id
        @userList = props.match.params.userList

    render:  () ->
        sceletonProps = {
            @props...,
            location: {_id: "table:#{@userList}:#{@id}"},
            showNews: "hide",
            showTree: "hide"
        }
        child = <Table details={true} data={@props.data} me={@props.me} headerText={true}/>
        `<Sceleton {...sceletonProps}>{child}</Sceleton>`

options =
    urls: (props) ->
        data: "table/#{props.match.params.userList}/#{props.match.params.id}"
        me: "me"

    #timeout: 20000

export default ConnectedComponent(TablePage, options)
