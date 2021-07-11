<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateDownloadsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('downloads', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('title');
			$table->string('image')->default('');
			$table->string('slug');
			$table->text('description', 65535);
			$table->string('file')->nullable()->default('');
			$table->string('tags_relationship', 100)->nullable();
			$table->integer('active');
			$table->integer('likes')->default(0);
			$table->integer('downloads')->default(0);
			$table->integer('category_id');
			$table->timestamp('time_download')->default(DB::raw('CURRENT_TIMESTAMP'));
			$table->timestamps();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('downloads');
	}

}
