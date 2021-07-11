<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToDownloadTagTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('download_tag', function(Blueprint $table)
		{
			$table->foreign('download_id')->references('id')->on('downloads')->onUpdate('RESTRICT')->onDelete('CASCADE');
			$table->foreign('tag_id')->references('id')->on('tags')->onUpdate('RESTRICT')->onDelete('CASCADE');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('download_tag', function(Blueprint $table)
		{
			$table->dropForeign('download_tag_download_id_foreign');
			$table->dropForeign('download_tag_tag_id_foreign');
		});
	}

}
