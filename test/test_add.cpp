#include <gtest/gtest.h>
#include "../src/add.h"

TEST(AddFunctionTest, BasicTest) {
    EXPECT_EQ(add(5, 10), 15);
    EXPECT_EQ(add(0, 0), 0);
    EXPECT_EQ(add(123, 456), 579);
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}

