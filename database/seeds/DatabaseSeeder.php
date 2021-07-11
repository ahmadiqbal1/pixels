<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call(UsersTableSeeder::class);
        $this->call(TranslationsTableSeeder::class);
        $this->call(TagsTableSeeder::class);
        $this->call(SettingsTableSeeder::class);
        $this->call(RolesTableSeeder::class);
        $this->call(PostsTableSeeder::class);
        $this->call(PermissionsTableSeeder::class);
        $this->call(PagesTableSeeder::class);
        $this->call(MenusTableSeeder::class);
        $this->call(DownloadsTableSeeder::class);
        $this->call(DataTypesTableSeeder::class);
        $this->call(DataRowsTableSeeder::class);
        $this->call(CategoriesTableSeeder::class);
        $this->call(DownloadTagTableSeeder::class);
        $this->call(MenuItemsTableSeeder::class);
        $this->call(PasswordResetsTableSeeder::class);
        $this->call(PermissionGroupsTableSeeder::class);
        $this->call(PermissionRoleTableSeeder::class);
    }
}
