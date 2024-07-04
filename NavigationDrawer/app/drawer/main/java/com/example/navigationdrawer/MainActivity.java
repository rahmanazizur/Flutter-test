package com.example.navigationdrawer;

import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import android.content.Intent;
import android.os.Bundle;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;

import com.google.android.material.navigation.NavigationView;

public class MainActivity extends AppCompatActivity {

    DrawerLayout drawerLayout;
    NavigationView navigationView;
    ImageView drawerbuttontoggle;

    ActionBarDrawerToggle actionBarDrawerToggle;


//for navbar openning
    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        if (actionBarDrawerToggle.onOptionsItemSelected(item)) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        drawerLayout = findViewById(R.id.drawer_layout);
        navigationView = findViewById(R.id.navigation_view);

//        drawerbuttontoggle=findViewById(R.id.drawerbuttontoggle);
//        drawerbuttontoggle.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View view) {
//                drawerLayout.open();
//            }
//        });

        //toolbar = findViewById(R.id.toolbar);
        //setSupportActionBar(toolbar);




        // create actionbardrawertoggle to open and close
        actionBarDrawerToggle = new ActionBarDrawerToggle(this, drawerLayout, R.string.open, R.string.close);

        // add actionbardrawertoggle to drawerlayout
        drawerLayout.addDrawerListener(actionBarDrawerToggle);
        // for toggling between hamburger and back arrow
        actionBarDrawerToggle.syncState();

        // for showing hamburger and back arrow
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);



        getSupportFragmentManager().beginTransaction().replace(R.id.framelayout, new DefaultFragment()).commit();




//
//
        navigationView.setNavigationItemSelectedListener(new NavigationView.OnNavigationItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem item) {
                FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
                switch (item.getItemId()) {
                    case R.id.home:

                        transaction.replace(R.id.framelayout, new FirstFragment());
                        transaction.addToBackStack(null);
                        transaction.commit(); // save the changes

                        drawerLayout.close();
                        Toast.makeText(MainActivity.this,item.getItemId()+" : "+R.id.home,Toast.LENGTH_LONG).show();
                        break;
                    case R.id.login:
//                        FragmentManager fragmentManager = getSupportFragmentManager();
//                        FragmentTransaction transaction2 = fragmentManager.beginTransaction();
                        FirstFragment firstFragment = new FirstFragment();
                        transaction.setReorderingAllowed(true);
                        transaction.replace(R.id.framelayout, new LoginFragment());
                        transaction.commit();
                        drawerLayout.close();
                        Toast.makeText(MainActivity.this,item.getItemId()+" : "+R.id.login,Toast.LENGTH_LONG).show();
                        break;
                    case R.id.setting:
                        Intent intent2 = new Intent(MainActivity.this, ServiceActivity.class);
                        startActivity(intent2);
                        break;
                }

                return true;
            }
        });

    }

//    @Override
//    public void onBackPressed() {
//        if (drawerLayout.isDrawerOpen(GravityCompat.START)) {
//            drawerLayout.closeDrawer(GravityCompat.START);
//        } else {
//            super.onBackPressed();
//        }
//
//    }


}