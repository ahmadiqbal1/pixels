<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateDownloadTagTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('download_tag', function(Blueprint $table)
		{
			$table->integer('download_id')->unsigned()->index();
			$table->integer('tag_id')->unsigned()->index();
			$table->primary(['download_id','tag_id']);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('download_tag');
	}

}
