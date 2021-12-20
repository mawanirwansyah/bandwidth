<?php

function assets_url()
{
    $ci = &get_instance();

    return $ci->config->item('assets_url');
}